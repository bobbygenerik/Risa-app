package p283;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.support.v4.media.session.ⁱˊ;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import androidx.leanback.widget.InterfaceC0088;
import androidx.leanback.widget.InterfaceC0106;
import androidx.lifecycle.AbstractC0157;
import com.bumptech.glide.ʽ;
import com.google.firebase.encoders.EncodingException;
import com.parse.ٴʼ;
import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import p007.InterfaceC0836;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p027.RunnableC1101;
import p055.C1463;
import p055.C1471;
import p055.C1474;
import p055.C1476;
import p055.C1480;
import p055.C1482;
import p055.InterfaceC1487;
import p056.C1508;
import p056.InterfaceC1498;
import p070.C1629;
import p090.C1784;
import p093.C1858;
import p093.EnumC1853;
import p099.C1902;
import p099.C1903;
import p126.InterfaceC2136;
import p127.C2162;
import p131.C2196;
import p139.C2356;
import p152.AbstractC2444;
import p212.InterfaceC2986;
import p220.C3029;
import p220.InterfaceC3035;
import p223.C3056;
import p242.C3240;
import p242.InterfaceC3239;
import p287.C3587;
import p301.InterfaceC3701;
import p305.InterfaceC3718;
import p308.C3750;
import p308.C3756;
import p324.AbstractC3999;
import p324.C4035;
import p359.C4360;
import p359.InterfaceC4355;
import p359.InterfaceC4357;
import p388.C4620;
import p392.SurfaceHolderCallbackC4642;
import p395.InterfaceC4721;
import p395.InterfaceC4734;
import p428.C5063;
import p428.C5072;
import p428.C5078;
import p428.InterfaceC5066;
import ʽˋ.ﹶᐧ;
import ʿˋ.ˉʿ;
import ˉʾ.ʻʿ;
import ˏˆ.ﹳٴ;
import ᐧˈ.ʼᐧ;
import ᐧˈ.יـ;
import ᐧˈ.ﹳᐧ;
import ᵔʻ.ᵔᵢ;
import ᵔˋ.ʽʽ;
import ᵔˋ.ٴᵢ;
import ᵔˋ.ᴵˊ;
import ᵔˋ.ᵎˊ;
import ᵔˋ.ᵢˏ;
import ᵢʿ.ʾᵎ;
import ᵢʿ.ˊᵔ;
import ᵢʿ.ᴵˑ;
import ᵢـ.ʼˎ;

/* renamed from: ٴˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3569 implements InterfaceC0836, InterfaceC3239, InterfaceC2986, InterfaceC0106, InterfaceC0088, InterfaceC4721, InterfaceC1498, InterfaceC3718, InterfaceC3035, InterfaceC5066 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f13956;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f13957;

    public /* synthetic */ C3569(int i, Object obj) {
        this.f13956 = i;
        this.f13957 = obj;
    }

    @Override // p056.InterfaceC1498
    /* renamed from: ʼˎ */
    public Object mo2816(C1508 c1508) {
        C4035 c4035 = (C4035) this.f13957;
        c4035.mo8251(new C1784(c1508, 2, c4035));
        return "Deferred.asListenableFuture";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v5, types: [ᵔـ.ﾞᴵ, java.lang.Object] */
    @Override // p007.InterfaceC0836
    /* renamed from: ʽ */
    public Object mo2817() {
        SQLiteDatabase m8833;
        int i = this.f13956;
        Object obj = this.f13957;
        switch (i) {
            case 2:
                C4360 c4360 = (C4360) ((InterfaceC4355) obj);
                c4360.getClass();
                int i2 = C1858.f7464;
                ﹳٴ r0 = new ﹳٴ(12, false);
                r0.ʽʽ = null;
                r0.ᴵˊ = new ArrayList();
                r0.ˈٴ = null;
                r0.ᴵᵔ = "";
                HashMap hashMap = new HashMap();
                m8833 = c4360.m8833();
                m8833.beginTransaction();
                try {
                    C1858 c1858 = (C1858) C4360.m8831(m8833.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new C2196(c4360, hashMap, r0, 5));
                    m8833.setTransactionSuccessful();
                    return c1858;
                } finally {
                }
            case 3:
                C4360 c43602 = (C4360) ((InterfaceC4357) obj);
                long mo9045 = c43602.f16191.mo9045() - c43602.f16190.f16198;
                m8833 = c43602.m8833();
                m8833.beginTransaction();
                try {
                    String[] strArr = {String.valueOf(mo9045)};
                    Cursor rawQuery = m8833.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr);
                    while (rawQuery.moveToNext()) {
                        try {
                            c43602.m8836(rawQuery.getInt(0), EnumC1853.f7447, rawQuery.getString(1));
                        } catch (Throwable th) {
                            rawQuery.close();
                            throw th;
                        }
                    }
                    rawQuery.close();
                    int delete = m8833.delete("events", "timestamp_ms < ?", strArr);
                    m8833.setTransactionSuccessful();
                    m8833.endTransaction();
                    return Integer.valueOf(delete);
                } finally {
                }
            case 4:
                C4360 c43603 = (C4360) ((InterfaceC4355) ((C1629) obj).f6481);
                m8833 = c43603.m8833();
                m8833.beginTransaction();
                try {
                    m8833.compileStatement("DELETE FROM log_event_dropped").execute();
                    m8833.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + c43603.f16191.mo9045()).execute();
                    m8833.setTransactionSuccessful();
                    return null;
                } finally {
                }
            default:
                ﹳٴ r4 = (ﹳٴ) obj;
                Iterator it = ((Iterable) ((C4360) ((InterfaceC4357) r4.ʽʽ)).m8835(new Object())).iterator();
                while (it.hasNext()) {
                    ((ٴʼ) r4.ˈٴ).ʻᵎ((C2356) it.next(), 1, false);
                }
                return null;
        }
    }

    @Override // androidx.leanback.widget.InterfaceC0106
    /* renamed from: ˆʾ */
    public void mo605(View view, int i) {
        ʽʽ r1;
        int i2 = this.f13956;
        Object obj = this.f13957;
        switch (i2) {
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                ᵔᵢ r2 = (ᵔᵢ) obj;
                if (i == -1) {
                    return;
                }
                String str = r2.f3679.f3641.m852(i).f1353;
                if (AbstractC2444.m5562(r2.ⁱᴵ, str)) {
                    return;
                }
                r2.ⁱᴵ = str;
                ʻʿ r11 = ʽ.ᵔᵢ(str);
                C5078 c5078 = ⁱˊ.ﾞᴵ;
                if (c5078 != null) {
                    ʼˎ.ﹳٴ(c5078, r11, 1);
                    return;
                }
                return;
            default:
                ᵎˊ r22 = (ᵎˊ) obj;
                InterfaceC3701[] interfaceC3701Arr = ᵎˊ.ᵔⁱ;
                ᴵˊ adapter = r22.ˎᵎ().ᵔᵢ.getAdapter();
                ᴵˊ r12 = adapter instanceof ᴵˊ ? adapter : null;
                int i3 = 5;
                if (r12 != null) {
                    int selectedPosition = r22.ˎᵎ().ᵔᵢ.getSelectedPosition();
                    if (r12.ˈ.size() != 0 && selectedPosition != -1 && !r22.ˎᵎ().ᵔᵢ.m955()) {
                        int i4 = 0;
                        r12.m6120(0, r12.ˈ.size(), ᵢˏ.ʾˋ);
                        int selectedPosition2 = r22.ˎᵎ().ʼˎ.getSelectedPosition();
                        if (selectedPosition2 != -1) {
                            ٴᵢ adapter2 = r22.ˎᵎ().ʼˎ.getAdapter();
                            ٴᵢ r13 = adapter2 instanceof ٴᵢ ? adapter2 : null;
                            if (r13 != null && (r1 = r13.ᵔʾ(selectedPosition2)) != null) {
                                LocalDate f = LocalDateTime.ofInstant(Instant.ofEpochSecond(r1.ⁱˊ.ⁱˊ), ZoneId.systemDefault()).f();
                                LocalDate localDate = (LocalDate) r12.ˈ.get(selectedPosition);
                                if (!AbstractC2444.m5562(f, localDate)) {
                                    long epochSecond = localDate.atStartOfDay(ZoneId.systemDefault()).toEpochSecond();
                                    ٴᵢ adapter3 = r22.ˎᵎ().ʼˎ.getAdapter();
                                    ٴᵢ r122 = adapter3 instanceof ٴᵢ ? adapter3 : null;
                                    if (r122 != null) {
                                        int size = r122.ˈ.size();
                                        while (true) {
                                            if (i4 < size) {
                                                ʽʽ r6 = r122.ᵔʾ(i4);
                                                if (r6 == null || r6.ﹳٴ == 2 || r6.ⁱˊ.ⁱˊ < epochSecond) {
                                                    i4++;
                                                } else {
                                                    AbstractC3999.m8168(ˉʿ.ˆﾞ(r22), null, new ﹶᐧ(r22, i4, (InterfaceC2136) null, 5), 3);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                View view2 = r22.f11908;
                if (view2 != null) {
                    view2.post(new RunnableC1101(r22, r22, view, i3));
                    return;
                }
                return;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(52:1|(1:3)(1:157)|4|5|(1:7)|(1:9)(1:156)|10|(3:151|152|(1:154)(1:155))(3:14|(3:147|148|(1:150))(4:18|(2:21|19)|22|23)|24)|25|(0)|27|(3:29|(3:31|32|33)(1:35)|34)|36|37|38|39|40|(1:42)|43|(1:45)|(1:47)(1:143)|48|(4:51|(2:53|54)(1:56)|55|49)|57|58|(1:60)|61|62|(1:64)(1:142)|(1:66)(1:141)|67|(5:128|(1:130)|131|3e1|136)(1:71)|72|(17:76|(1:78)(2:124|(1:126))|79|80|(2:82|(1:84))(2:120|(2:122|123))|85|86|87|88|89|90|91|(3:112|(1:114)|115)(3:99|(1:101)|102)|103|104|(2:106|(1:108))|109)|127|80|(0)(0)|85|86|87|88|89|90|91|(2:93|95)|112|(0)|115|103|104|(0)|109) */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x059d, code lost:
    
        r6.f18298 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x044d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x043f  */
    /* JADX WARN: Type inference failed for: r2v15, types: [ˏـ.ˈ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v18, types: [ﹳי.ʽ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v21, types: [ʾٴ.ⁱˊ, java.lang.Object] */
    @Override // p212.InterfaceC2986
    /* renamed from: ˈ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo2819(androidx.leanback.widget.ʻٴ r49) {
        /*
            Method dump skipped, instructions count: 1542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p283.C3569.mo2819(androidx.leanback.widget.ʻٴ):java.lang.Object");
    }

    @Override // androidx.leanback.widget.InterfaceC0088
    /* renamed from: ˑﹳ */
    public boolean mo574(KeyEvent keyEvent) {
        ᵢⁱ.ʽʽ r0;
        switch (this.f13956) {
            case 10:
                r0 = (ʾᵎ) this.f13957;
                break;
            case 11:
                r0 = (ᴵˑ) this.f13957;
                break;
            default:
                r0 = (ᵢⁱ.ʽʽ) this.f13957;
                break;
        }
        return r0.ˊﹳ(keyEvent);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C2162 m7525(ˑי.ʽ r24) {
        C3587 c3587 = (C3587) this.f13957;
        URL url = (URL) r24.ʾˋ;
        if (Log.isLoggable(ˉᵎ.ⁱˊ.ʼʼ("CctTransportBackend"), 4)) {
            String.format("Making request to: %s", url);
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(c3587.f14017);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.3.0 android/");
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = (String) r24.ʽʽ;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                try {
                    ﹳי.ʽ r2 = c3587.f14019;
                    C3756 c3756 = (C3756) r24.ᴵˊ;
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(gZIPOutputStream));
                    C1902 c1902 = (C1902) r2.ʾˋ;
                    C1903 c1903 = new C1903(bufferedWriter, c1902.f7612, c1902.f7611, c1902.f7609, c1902.f7610);
                    c1903.m4852(c3756);
                    c1903.m4851();
                    c1903.f7616.flush();
                    gZIPOutputStream.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    int responseCode = httpURLConnection.getResponseCode();
                    Integer valueOf = Integer.valueOf(responseCode);
                    if (Log.isLoggable(ˉᵎ.ⁱˊ.ʼʼ("CctTransportBackend"), 4)) {
                        String.format("Status Code: %d", valueOf);
                    }
                    ˉᵎ.ⁱˊ.ᵔᵢ("CctTransportBackend", "Content-Type: %s", httpURLConnection.getHeaderField("Content-Type"));
                    ˉᵎ.ⁱˊ.ᵔᵢ("CctTransportBackend", "Content-Encoding: %s", httpURLConnection.getHeaderField("Content-Encoding"));
                    if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                        return new C2162(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                    }
                    if (responseCode != 200) {
                        return new C2162(responseCode, null, 0L);
                    }
                    InputStream inputStream = httpURLConnection.getInputStream();
                    try {
                        InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                        try {
                            C2162 c2162 = new C2162(responseCode, null, C3750.m7952(new BufferedReader(new InputStreamReader(gZIPInputStream))).f14605);
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return c2162;
                        } finally {
                        }
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        } catch (EncodingException e) {
            e = e;
            ˉᵎ.ⁱˊ.ʼˎ("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new C2162(400, null, 0L);
        } catch (ConnectException e2) {
            e = e2;
            ˉᵎ.ⁱˊ.ʼˎ("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C2162(500, null, 0L);
        } catch (UnknownHostException e3) {
            e = e3;
            ˉᵎ.ⁱˊ.ʼˎ("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C2162(500, null, 0L);
        } catch (IOException e4) {
            e = e4;
            ˉᵎ.ⁱˊ.ʼˎ("CctTransportBackend", "Couldn't encode request, returning with 400", e);
            return new C2162(400, null, 0L);
        }
    }

    @Override // p220.InterfaceC3035
    /* renamed from: ᵎﹶ */
    public Object mo5197(C3029 c3029) {
        ((CountDownLatch) this.f13957).countDown();
        return null;
    }

    @Override // p242.InterfaceC3239
    /* renamed from: ᵔᵢ */
    public void mo3494(Object obj) {
        switch (this.f13956) {
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                ʼᐧ r0 = (ʼᐧ) this.f13957;
                C3240 c3240 = (C3240) obj;
                if (c3240.f12367 == -1) {
                    יـ r1 = r0.ˏⁱ();
                    String stringExtra = c3240.f12368.getStringExtra("ar.tvplayer.tv.settings.TvGuideUrl");
                    r1.getClass();
                    AbstractC3999.m8168(AbstractC0157.m674(r1), null, new ﹳᐧ(stringExtra, (InterfaceC2136) null, 0), 3);
                    r0.ﹶˎ = Long.MAX_VALUE;
                    return;
                }
                return;
            case 12:
                ˊᵔ r02 = (ˊᵔ) this.f13957;
                r02.getClass();
                if (((C3240) obj).f12367 != -1) {
                    r02.ˋˊ = 0L;
                    return;
                }
                return;
            default:
                ((ᵢⁱ.ʽ) this.f13957).ˏⁱ();
                return;
        }
    }

    @Override // p305.InterfaceC3718
    /* renamed from: ⁱˊ */
    public void mo2801(Object obj) {
        switch (this.f13956) {
            case 18:
                ((InterfaceC1487) obj).mo2835((C1482) this.f13957);
                return;
            case 19:
                ((InterfaceC1487) obj).mo2861((C1471) this.f13957);
                return;
            case 20:
                ((InterfaceC1487) obj).mo2826((C1463) this.f13957);
                return;
            case 21:
                ((InterfaceC1487) obj).mo2844((C4620) this.f13957);
                return;
            case 22:
                ((InterfaceC1487) obj).mo2835(((SurfaceHolderCallbackC4642) this.f13957).f17344.f17395);
                return;
            case 23:
                ((InterfaceC1487) obj).mo2860((C1476) this.f13957);
                return;
            default:
                ((InterfaceC1487) obj).mo2866((List) this.f13957);
                return;
        }
    }

    @Override // p395.InterfaceC4721
    /* renamed from: ﹳٴ */
    public InterfaceC4734 mo4513(C1480 c1480) {
        return (InterfaceC4734) this.f13957;
    }

    @Override // p428.InterfaceC5066
    /* renamed from: ﾞᴵ */
    public C0956 mo3946(int i, C1474 c1474, int[] iArr) {
        C5063 c5063 = (C5063) this.f13957;
        C0968 m3261 = AbstractC0993.m3261();
        for (int i2 = 0; i2 < c1474.f5770; i2++) {
            m3261.m3239(new C5072(i, c1474, i2, c5063, iArr[i2]));
        }
        return m3261.m3249();
    }
}
