package p127;

import androidx.media3.common.ParserException;
import ar.tvplayer.core.data.api.xtreamcodes.Series;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import p013.InterfaceC0908;
import p017.AbstractC0993;
import p032.C1161;
import p305.AbstractC3731;
import p329.InterfaceC4106;
import p430.AbstractC5106;
import p430.AbstractC5108;
import ʾˆ.ˈ;
import ˈˆ.ﾞᴵ;
import ˉʾ.ʼـ;
import ˉʾ.ʾˋ;
import ˏʽ.ʽ;
import ˏʽ.ٴﹶ;
import ᐧʾ.ˉʿ;
import ᐧᵎ.ʻʿ;
import ᐧᵎ.ʾˊ;
import ᐧᵎ.י;
import ᵔᵔ.ﹳٴ;

/* renamed from: ˈـ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2162 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f8423;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f8424;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f8425;

    public C2162(int i, URL url, long j) {
        this.f8425 = i;
        this.f8423 = url;
        this.f8424 = j;
    }

    public C2162(ﹳٴ r1, long j) {
        this.f8423 = r1;
        this.f8424 = j;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static byte[] m5136(byte b, DataInputStream dataInputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = {b, dataInputStream.readByte()};
        byteArrayOutputStream.write(bArr);
        while (true) {
            if (bArr[0] == 13 && bArr[1] == 10) {
                return byteArrayOutputStream.toByteArray();
            }
            bArr[0] = bArr[1];
            byte readByte = dataInputStream.readByte();
            bArr[1] = readByte;
            byteArrayOutputStream.write(readByte);
        }
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.Map, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m5137(InterfaceC4106 interfaceC4106) {
        ˉʿ r2 = (ﹳٴ) this.f8423;
        if (r2 instanceof ˈ) {
            return;
        }
        int i = 0;
        if (!(r2 instanceof ˉʿ)) {
            if (!(r2 instanceof ٴﹶ)) {
                throw new IllegalStateException("Unhandled playlist type: " + r2);
            }
            י r3 = new י(this, 1);
            boolean z = ʿˋ.ˉʿ.ﹳٴ;
            InterfaceC0908 interfaceC0908 = ﾞᴵ.ˉٴ(3, r3);
            ٴﹶ r22 = (ٴﹶ) r2;
            ʻʿ.ˏי((Map) r22.ᵔᵢ, Boolean.FALSE, new ʾˊ(this, interfaceC4106, interfaceC0908, 0));
            ʻʿ.ˏי((Map) r22.ʼˎ, (Boolean) null, new ʾˊ(this, interfaceC4106, interfaceC0908, 1));
            return;
        }
        י r32 = new י(this, 0);
        boolean z2 = ʿˋ.ˉʿ.ﹳٴ;
        InterfaceC0908 interfaceC09082 = ﾞᴵ.ˉٴ(3, r32);
        ˉʿ r23 = r2;
        AbstractC5108.m10052(new C1161(23, new ʽ(2, r23.ٴﹶ)), r23.ﾞʻ);
        Iterator it = r23.ﾞʻ.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            int i2 = i + 1;
            if (i < 0) {
                AbstractC5106.m10049();
                throw null;
            }
            Series series = (Series) next;
            r23.ﾞʻ.set(i, (Series) Series.ᵎﹶ.getValue());
            Long l = (Long) ((Map) interfaceC09082.getValue()).get(ʿˋ.ˉʿ.ᐧﾞ(series.ˈ));
            long j = this.f8424;
            int i3 = this.f8425;
            this.f8425 = i3 + 1;
            Integer valueOf = Integer.valueOf(series.ﹳٴ);
            String str = series.ⁱˊ;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            String str3 = series.ʽ;
            float f = series.ˑﹳ;
            Iterator it2 = it;
            interfaceC4106.mo3844(new ʼـ(0L, j, l, valueOf, (Long) null, (String) null, str2, str3, f == 0.0f ? null : Float.valueOf(f), ʿˋ.ˉʿ.ᐧᴵ(series.ﾞᴵ), Integer.valueOf(i3), (ˉʾ.ʻʿ) null, (ˉʾ.ʻʿ) null, (ˉʾ.ʻʿ) null, ʾˋ.ᴵˊ, (Integer) null, (Boolean) null, (Long) null, (Integer) null, (Long) null));
            i = i2;
            it = it2;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC0993 m5138(byte[] bArr) {
        long j;
        ArrayList arrayList = (ArrayList) this.f8423;
        AbstractC3731.m7849(bArr.length >= 2 && bArr[bArr.length - 2] == 13 && bArr[bArr.length - 1] == 10);
        String str = new String(bArr, 0, bArr.length - 2, C2173.f8501);
        arrayList.add(str);
        int i = this.f8425;
        if (i == 1) {
            if (!AbstractC2166.f8450.matcher(str).matches() && !AbstractC2166.f8449.matcher(str).matches()) {
                return null;
            }
            this.f8425 = 2;
            return null;
        }
        if (i != 2) {
            throw new IllegalStateException();
        }
        try {
            Matcher matcher = AbstractC2166.f8444.matcher(str);
            if (matcher.find()) {
                String group = matcher.group(1);
                group.getClass();
                j = Long.parseLong(group);
            } else {
                j = -1;
            }
            if (j != -1) {
                this.f8424 = j;
            }
            if (!str.isEmpty()) {
                return null;
            }
            if (this.f8424 > 0) {
                this.f8425 = 3;
                return null;
            }
            AbstractC0993 m3264 = AbstractC0993.m3264(arrayList);
            arrayList.clear();
            this.f8425 = 1;
            this.f8424 = 0L;
            return m3264;
        } catch (NumberFormatException e) {
            throw ParserException.m740(str, e);
        }
    }
}
