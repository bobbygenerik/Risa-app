package com.bumptech.glide.load.data;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.HttpException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
import p035.AbstractC1220;
import p087.AbstractC1747;
import p087.C1741;
import p383.C4593;

/* renamed from: com.bumptech.glide.load.data.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0227 implements InterfaceC0220 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public HttpURLConnection f1632;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4593 f1633;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public InputStream f1634;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f1635;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public volatile boolean f1636;

    public C0227(C4593 c4593, int i) {
        this.f1633 = c4593;
        this.f1635 = i;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m1120(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e) {
            return Log.isLoggable("HttpUrlFetcher", 3) ? -1 : -1;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        this.f1636 = true;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InputStream m1121(URL url, int i, URL url2, Map map) {
        if (i >= 5) {
            throw new HttpException(-1, null, "Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new HttpException(-1, null, "In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        int i2 = this.f1635;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            httpURLConnection.setConnectTimeout(i2);
            httpURLConnection.setReadTimeout(i2);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setInstanceFollowRedirects(false);
            this.f1632 = httpURLConnection;
            try {
                httpURLConnection.connect();
                this.f1634 = this.f1632.getInputStream();
                if (this.f1636) {
                    return null;
                }
                int m1120 = m1120(this.f1632);
                int i3 = m1120 / 100;
                if (i3 == 2) {
                    HttpURLConnection httpURLConnection2 = this.f1632;
                    try {
                        if (TextUtils.isEmpty(httpURLConnection2.getContentEncoding())) {
                            this.f1634 = new C1741(httpURLConnection2.getInputStream(), httpURLConnection2.getContentLength());
                        } else {
                            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                                String str = "Got non empty content encoding: " + httpURLConnection2.getContentEncoding();
                            }
                            this.f1634 = httpURLConnection2.getInputStream();
                        }
                        return this.f1634;
                    } catch (IOException e) {
                        throw new HttpException(m1120(httpURLConnection2), e, "Failed to obtain InputStream");
                    }
                }
                if (i3 != 3) {
                    if (m1120 == -1) {
                        throw new HttpException(m1120, null, "Http request failed");
                    }
                    try {
                        throw new HttpException(m1120, null, this.f1632.getResponseMessage());
                    } catch (IOException e2) {
                        throw new HttpException(m1120, e2, "Failed to get a response message");
                    }
                }
                String headerField = this.f1632.getHeaderField("Location");
                if (TextUtils.isEmpty(headerField)) {
                    throw new HttpException(m1120, null, "Received empty or null redirect url");
                }
                try {
                    URL url3 = new URL(url, headerField);
                    mo1112();
                    return m1121(url3, i + 1, url, map);
                } catch (MalformedURLException e3) {
                    throw new HttpException(m1120, e3, AbstractC1220.m3771("Bad redirect url: ", headerField));
                }
            } catch (IOException e4) {
                throw new HttpException(m1120(this.f1632), e4, "Failed to connect or obtain data");
            }
        } catch (IOException e5) {
            throw new HttpException(0, e5, "URL.openConnection threw");
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        return 2;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        InputStream inputStream = this.f1634;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f1632;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f1632 = null;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        C4593 c4593 = this.f1633;
        int i = AbstractC1747.f7106;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            try {
                if (c4593.f17109 == null) {
                    c4593.f17109 = new URL(c4593.m9138());
                }
                interfaceC0218.mo1108(m1121(c4593.f17109, 0, null, c4593.f17108.mo9136()));
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    String str = "Finished http url fetcher fetch in " + AbstractC1747.m4706(elapsedRealtimeNanos);
                }
            } catch (IOException e) {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                }
                interfaceC0218.mo1107(e);
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    String str2 = "Finished http url fetcher fetch in " + AbstractC1747.m4706(elapsedRealtimeNanos);
                }
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                String str3 = "Finished http url fetcher fetch in " + AbstractC1747.m4706(elapsedRealtimeNanos);
            }
            throw th;
        }
    }
}
