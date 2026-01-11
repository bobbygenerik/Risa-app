package p002;

import android.net.Uri;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Base64;
import androidx.media3.common.ParserException;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.parse.ᵎⁱ;
import j$.util.DesugarCollections;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeoutException;
import p027.AbstractC1093;
import p027.C1089;
import p035.AbstractC1220;
import p127.AbstractC2166;
import p127.C2150;
import p127.C2173;
import p238.InterfaceC3206;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʻʽ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0767 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f3161;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Object f3162;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Object f3163;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3164;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f3165;

    public C0767() {
        this.f3165 = 7;
        this.f3161 = new Object();
        this.f3162 = null;
        this.f3163 = null;
        this.f3164 = 0;
    }

    public /* synthetic */ C0767(int i) {
        this.f3165 = i;
    }

    public C0767(int i, String str, int i2, ArrayList arrayList, byte[] bArr) {
        this.f3165 = 4;
        this.f3161 = str;
        this.f3164 = i2;
        this.f3162 = arrayList == null ? Collections.EMPTY_LIST : DesugarCollections.unmodifiableList(arrayList);
        this.f3163 = bArr;
    }

    public C0767(int i, String str, String str2, String str3) {
        this.f3165 = 3;
        this.f3164 = i;
        this.f3161 = str;
        this.f3162 = str2;
        this.f3163 = str3;
    }

    public C0767(UUID uuid, int i, byte[] bArr, UUID[] uuidArr) {
        this.f3165 = 1;
        this.f3161 = uuid;
        this.f3164 = i;
        this.f3162 = bArr;
        this.f3163 = uuidArr;
    }

    public C0767(C0767 c0767) {
        this.f3165 = 6;
        this.f3161 = (String) c0767.f3161;
        this.f3164 = c0767.f3164;
        this.f3162 = DesugarCollections.unmodifiableMap(new HashMap((HashMap) c0767.f3162));
        this.f3163 = (ᵎⁱ) c0767.f3163;
    }

    public C0767(C1089 c1089, int i, InterfaceC3206 interfaceC3206, Runnable runnable) {
        this.f3165 = 2;
        this.f3164 = i;
        this.f3161 = interfaceC3206;
        this.f3162 = runnable;
        this.f3163 = c1089;
    }

    public String toString() {
        switch (this.f3165) {
            case 0:
                return String.format("WindowsVersion[%s, %s, %d, %s]", (EnumC0771) this.f3161, (EnumC0772) this.f3162, Integer.valueOf(this.f3164), (EnumC0775) this.f3163);
            default:
                return super.toString();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public Looper m2793() {
        Looper looper;
        synchronized (this.f3161) {
            try {
                if (((Looper) this.f3162) == null) {
                    AbstractC3731.m7857(this.f3164 == 0 && ((HandlerThread) this.f3163) == null);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.f3163 = handlerThread;
                    handlerThread.start();
                    this.f3162 = ((HandlerThread) this.f3163).getLooper();
                }
                this.f3164++;
                looper = (Looper) this.f3162;
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public void m2794() {
        HandlerThread handlerThread;
        synchronized (this.f3161) {
            try {
                AbstractC3731.m7857(this.f3164 > 0);
                int i = this.f3164 - 1;
                this.f3164 = i;
                if (i == 0 && (handlerThread = (HandlerThread) this.f3163) != null) {
                    handlerThread.quit();
                    this.f3163 = null;
                    this.f3162 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void m2795(Throwable th) {
        C1089 c1089 = (C1089) this.f3163;
        if (th instanceof TimeoutException) {
            c1089.m3455(102, 28, AbstractC1093.f4274);
            AbstractC0542.m2091("BillingClientTesting", "Asynchronous call to Billing Override Service timed out.", th);
        } else {
            c1089.m3455(95, 28, AbstractC1093.f4274);
            AbstractC0542.m2091("BillingClientTesting", "An error occurred while retrieving billing override.", th);
        }
        ((Runnable) this.f3162).run();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int m2796() {
        int i = this.f3164;
        if (i != 2) {
            return i != 3 ? 0 : 512;
        }
        return 2048;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String m2797(C2150 c2150, Uri uri, int i) {
        String str = (String) this.f3163;
        String str2 = (String) this.f3161;
        String str3 = (String) this.f3162;
        int i2 = this.f3164;
        if (i2 == 1) {
            String encodeToString = Base64.encodeToString((c2150.f8367 + ":" + c2150.f8366).getBytes(C2173.f8501), 0);
            String str4 = AbstractC3712.f14481;
            Locale locale = Locale.US;
            return AbstractC1220.m3771("Basic ", encodeToString);
        }
        if (i2 != 2) {
            throw new ParserException(null, new UnsupportedOperationException(), false, 4);
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            String m5149 = AbstractC2166.m5149(i);
            String str5 = c2150.f8367 + ":" + str2 + ":" + c2150.f8366;
            Charset charset = C2173.f8501;
            String m7792 = AbstractC3712.m7792(messageDigest.digest((AbstractC3712.m7792(messageDigest.digest(str5.getBytes(charset))) + ":" + str3 + ":" + AbstractC3712.m7792(messageDigest.digest((m5149 + ":" + uri).getBytes(charset)))).getBytes(charset)));
            return str.isEmpty() ? String.format(Locale.US, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\"", c2150.f8367, str2, str3, uri, m7792) : String.format(Locale.US, "Digest username=\"%s\", realm=\"%s\", nonce=\"%s\", uri=\"%s\", response=\"%s\", opaque=\"%s\"", c2150.f8367, str2, str3, uri, m7792, str);
        } catch (NoSuchAlgorithmException e) {
            throw new ParserException(null, e, false, 4);
        }
    }
}
