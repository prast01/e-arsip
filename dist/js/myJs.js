var base_url = $(location).attr("pathname");
base_url.indexOf(1);
base_url.toLowerCase();
base_url =
  window.location.origin === "http://e-arsip.mi-kes.net"
    ? ""
    : base_url.split("/")[1] + "/";
var url = window.location.origin + "/" + base_url;

console.log(url);
$(function () {
  
  $( "#pengirim" ).autocomplete({
    source: url + "services/get_pengirim/?"
  });
  
  $( "#wilayah" ).autocomplete({
    source: url + "services/get_wilayah/?"
  });
  
  $( "#penerima" ).autocomplete({
    source: url + "services/get_penerima/?"
  });
  
  $( "#wilayah_2" ).autocomplete({
    source: url + "services/get_wilayah_2/?"
  });

  $(".datatable").DataTable();
  //Initialize Select2 Elements
  $(".select2").select2();
  var tgl1 = $("#tgl1").val();
  var tgl2 = $("#tgl2").val();
  $(".daterange").daterangepicker({
    startDate: tgl1,
    endDate: tgl2,
  });

  notif(url);
  notif2(url);
  notif3(url);
  // listSurat('surat_tugas');
  // listSurat('surat_keluar');
  // listSurat('surat_masuk');
  jumlahSurat(url);
  $(".sembunyi").hide();

  // Enable pusher logging - don't include this in production
  Pusher.logToConsole = true;

  var pusher = new Pusher("b1813ff66e7edbd37ba0", {
    cluster: "ap1",
    forceTLS: true,
  });

  var channel = pusher.subscribe("my-channel");
  channel.bind("my-event", function (data) {
    if (data.message === "success") {
      notif(url);
      notif2(url);
      notif3(url);
      // listSurat('surat_tugas');
      // listSurat('surat_keluar');
      // listSurat('surat_masuk');
      jumlahSurat(url);
    }
  });

  
  $('#jenis_surat').select2({
    ajax: {
        url: url + "services/get_klasifikasi",
        dataType: 'json',
        delay: 500,
        data: function(params) {
            return {
                search: params.term
            };
        },
        processResults: function(data) {
            return {
                results: $.map(data, function(item) {
                    return {
                        text: item.klasifikasi,
                        masalah: item.masalah,
                        nama_berkas: item.nama_berkas,
                        serie: item.serie,
                        r_aktif: item.r_aktif,
                        thn_aktif: item.thn_aktif,
                        r_inaktif: item.r_inaktif,
                        thn_inaktif: item.thn_inaktif,
                        ket_jra: item.ket_jra,
                        nilai_guna: item.nilai_guna,
                        klas: item.klas,
                        sub_klas: item.sub_klas,
                        sub_sub_klas: item.sub_sub_klas,
                        id: item.klasifikasi
                    }
                })
            }
        },
        cache: true
    },
    placeholder: 'Masukkan Kode Klasifikasi',
    minimumInputLength: 2,
    escapeMarkup: function(markup) {
        return markup;
    },
    templateResult: function(data) {
        return data.text;
    },
    templateSelection: function(data) {
        $("#klas").val(data.klas);
        $("#sub_klas").val(data.sub_klas);
        $("#sub_sub_klas").val(data.sub_sub_klas);
        $("#masalah").val(data.masalah);
        $("#nama_berkas").val(data.nama_berkas);
        var no_surat = (data.text == 'Masukkan Kode Klasifikasi') ? "" : data.text + "/";
        $("#nomor_surat").val(no_surat);
        $("#nomor_surat").focus();
        $("#r_aktif").val(data.r_aktif);
        $("#thn_aktif").val(data.thn_aktif);
        $("#r_inaktif").val(data.r_inaktif);
        $("#thn_inaktif").val(data.thn_inaktif);
        $("#serie").val(data.serie);
        $("#ket_jra").val(data.ket_jra).trigger("change");
        $("#nilai_guna").val(data.nilai_guna).trigger("change");
        return data.text;
    }
  });
  
  set_nilai_ubah();
});

function set_nilai_ubah() {
    var no_surat = $("#h_nomor_surat").val();
    var klas = $("#h_klas").val();
    var sub_klas = $("#h_sub_klas").val();
    var sub_sub_klas = $("#h_sub_sub_klas").val();
    var masalah = $("#h_masalah").val();
    var nama_berkas = $("#h_nama_berkas").val();
    var r_aktif = $("#h_r_aktif").val();
    var thn_aktif = $("#h_thn_aktif").val();
    var r_inaktif = $("#h_r_inaktif").val();
    var thn_inaktif = $("#h_thn_inaktif").val();
    var serie = $("#h_serie").val();
    var ket_jra = $("#h_ket_jra").val();
    var nilai_guna = $("#h_nilai_guna").val();
    $("#nomor_surat").val(no_surat);
    $("#klas").val(klas);
    $("#sub_klas").val(sub_klas);
    $("#sub_sub_klas").val(sub_sub_klas);
    $("#masalah").val(masalah);
    $("#nama_berkas").val(nama_berkas);
    $("#r_aktif").val(r_aktif);
    $("#thn_aktif").val(thn_aktif);
    $("#r_inaktif").val(r_inaktif);
    $("#thn_inaktif").val(thn_inaktif);
    $("#serie").val(serie);
    $("#ket_jra").val(ket_jra).trigger("change");
    $("#nilai_guna").val(nilai_guna).trigger("change");
}


function modal(id, lokasi, ext) {
  $("#modalku").modal();
  $(".modal-title").html("Berkas - " + id);
  var file = url + "dist/upload/" + lokasi + "/" + id;
  if (ext == "pdf") {
    var html =
      '<embed src="' +
      file +
      '" type="application/pdf" width="100%" height="600px" />';
  } else {
    var html = '<img src="' + file + '" width="100%"/>';
  }
    $(".modal-body").html(html);
  // $('.media').media({width: 868});
}

function modal2(id, lokasi) {
  if (lokasi == "surat_keluar") {
    var data = {
      id_surat_keluar: id,
    };
  } else {
    var data = {
      id_surat_tugas: id,
    };
  }

  var origin = window.location.origin + "/" + lokasi + "/modal";

  $.ajax({
    type: "POST",
    url: origin,
    data: data,
    success: function (data) {
      $("#modalku2").modal();
      $(".modal-title").html("Unggah Berkas");
      $(".modal-body").html(data);
    },
  });
}

function notif(url) {
  var origin = url + "notif";
  // setTimeout(
  $.ajax({
    type: "POST",
    url: origin,
    success: function (data) {
      var hasil = JSON.parse(data);
      if (hasil.jml != "0") {
        $(".jml-notif").html(hasil.jml);
      } else {
        $(".jml-notif").html("");
      }

      $(".jml-notif-2").html(hasil.jml + " Notifikasi");
      $(".jml-masuk-1").html(hasil.surat_masuk + " Surat Masuk");
      $(".jml-tugas").html(hasil.surat_tugas + " Pesanan Surat Tugas");

      // notif();
    },
  });
  // , 30000);
}
function notif2(url) {
  var origin = url + "notif/notif_2";
  // setTimeout(
  $.ajax({
    type: "POST",
    url: origin,
    success: function (data) {
      var hasil = JSON.parse(data);
      if (hasil.jml != "0") {
        $(".jml-notif-masuk").html(hasil.jml);
      } else {
        $(".jml-notif-masuk").html("");
      }

      $(".jml-notif-masuk-2").html(hasil.jml + " Notifikasi");
      $(".jml-masuk-3").html(hasil.surat_masuk + " Surat Masuk");

      // notif();
    },
  });
  // , 30000);
}
function notif3(url) {
  var origin = url + "notif/notif_3";
  // setTimeout(
  $.ajax({
    type: "POST",
    url: origin,
    success: function (data) {
      var hasil = JSON.parse(data);
      if (hasil.jml != "0") {
        $(".jml-notif-3").html(hasil.jml);
      } else {
        $(".jml-notif-3").html("");
      }

      $(".jml-notif-4").html(hasil.jml + " Notifikasi");
      $(".jml-masuk-2").html(hasil.surat_masuk + " Surat Masuk");
      $(".jml-nota-2").html(hasil.nota_dinas + " Nota Dinas");

      // notif();
    },
  });
  // , 30000);
}

function listSurat(lokasi) {
  var origin = window.location.origin + "/" + lokasi + "/listSurat";

  $.ajax({
    type: "POST",
    url: origin,
    success: function (data) {
      $("." + lokasi).html(data);
    },
  });
}

function jumlahSurat(url) {
  var origin = url + "arsip/jumlahSurat";

  $.ajax({
    type: "POST",
    url: origin,
    success: function (data) {
      var json = JSON.parse(data);
      $(".jml_surat_masuk").html(json.surat_masuk);
      $(".jml_surat_keluar").html(json.surat_keluar);
      $(".jml_surat_tugas").html(json.surat_tugas);
      $(".jml_nota_dinas").html(json.nota_dinas);
    },
  });
}

function diSpj(item) {
  var val = item.value;
  if (val === "0") {
    $(".sembunyi").hide();
  } else {
    $(".sembunyi").show();
  }
}
function diSpj2(item) {
  var val = item.value;
  if (val === "0") {
    $(".sembunyi2").hide();
  } else {
    $(".sembunyi2").show();
  }
}

function open_win() {
  var origin = window.location.origin + "/surat_tugas/dasar";
  window.open(
    origin,
    "_blank",
    "toolbar=yes,location=yes,menubar=yes,copyhistory=yes,directories=no,status=no,resizable=no,width=1000,height=600"
  );
}

var id = 1;
function tambahRek() {
  var rek = $("#rek").val();
  var jml = $("#jml").val();
  var rok = $("#jml2").val();
  var alasan = $("#alasan").val();
  var origin = window.location.origin + "/nota_dinas/getRekening";
  var data = {
    id_rek: rek,
    jml: jml,
    rok: rok,
    alasan: alasan,
  };

  $.ajax({
    type: "POST",
    url: origin,
    data: data,
    success: function (data) {
      var json = JSON.parse(data);
      var id_rek = json.id_rekening;
      var kode_rek = json.kode_rekening;
      var nama_rek = json.uraian_rekening;
      var jumlah = json.jumlah;
      var rok2 = json.rok;
      var alasan2 = json.alasan;
      var total = json.total;
      var html = '<tr id="tr-' + id + '">';
      html += "<td>" + kode_rek + " -<br>" + nama_rek;
      html +=
        '<input type="hidden" name="id_rekening[]" value="' + id_rek + '">';
      html += '<input type="hidden" name="jumlah[]" value="' + jml + '">';
      html += '<input type="hidden" name="rok[]" value="' + rok + '">';
      html += '<input type="hidden" name="alasan[]" value="' + alasan2 + '">';
      html += "</td>";
      html += "<td>" + alasan2 + "</td>";
      html += '<td align="right">' + rok2 + "</td>";
      html += '<td align="right">' + jumlah + "</td>";
      html += '<td align="right">' + total + "</td>";
      html +=
        '<td align="center"><span class="text-danger" onclick="delRek(\'tr-' +
        id +
        '\')" style="cursor: pointer"><i class="fa fa-times"></i></span></td>';
      html += "</tr>";
      console.log(html);
      $("#tbody").append(html);
      $("#rek").val("").trigger("change");
      $("#jml").val("");
      $("#jml2").val("");
      $("#alasan").val("");
      id++;
    },
  });
}

function delRek(id) {
  $("#" + id).remove();
}

function dispo(id) {
  var val = id.value;

  if (val == "0") {
    $(".dispo").prop("disabled", false);
  } else {
    $(".dispo").prop("disabled", true);
    $(".dispo").val("").trigger("change");
  }
  console.log(val);
}


// function thn_aktif() {
//   var thn = $("#tahun_skrg").val();
//   var aktif = $("#r_aktif").val();

//   var x = parseInt(thn) + parseInt(aktif);
//   $("#thn_aktif").val(x);
// }