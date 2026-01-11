package p257;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import p087.AbstractC1746;
import ˋⁱ.ﾞᴵ;

/* renamed from: יᐧ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3393 implements InterfaceC3396 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final Bitmap.Config f13251 = Bitmap.Config.ARGB_8888;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ﾞᴵ f13252;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3392 f13253;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long f13254;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f13255;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f13256;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f13257;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Set f13258;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f13259;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f13260;

    /* JADX WARN: Type inference failed for: r5v1, types: [ˋⁱ.ﾞᴵ, java.lang.Object] */
    public C3393(long j) {
        Bitmap.Config config;
        C3392 c3392 = new C3392();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i >= 26) {
            config = Bitmap.Config.HARDWARE;
            hashSet.remove(config);
        }
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(hashSet);
        this.f13254 = j;
        this.f13253 = c3392;
        this.f13258 = unmodifiableSet;
        this.f13252 = new Object();
    }

    @Override // p257.InterfaceC3396
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Bitmap mo7280(int i, int i2, Bitmap.Config config) {
        Bitmap m7286 = m7286(i, i2, config);
        if (m7286 != null) {
            m7286.eraseColor(0);
            return m7286;
        }
        if (config == null) {
            config = f13251;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized void m7281(long j) {
        while (this.f13259 > j) {
            try {
                C3392 c3392 = this.f13253;
                Bitmap bitmap = (Bitmap) c3392.f13249.m9571();
                if (bitmap != null) {
                    c3392.m7279(Integer.valueOf(AbstractC1746.m4698(bitmap)), bitmap);
                }
                if (bitmap == null) {
                    if (Log.isLoggable("LruBitmapPool", 5)) {
                        m7287();
                    }
                    this.f13259 = 0L;
                    return;
                }
                this.f13252.getClass();
                long j2 = this.f13259;
                this.f13253.getClass();
                this.f13259 = j2 - AbstractC1746.m4698(bitmap);
                this.f13260++;
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Evicting bitmap=");
                    this.f13253.getClass();
                    sb.append(C3392.m7275(AbstractC1746.m4698(bitmap), bitmap.getConfig()));
                    sb.toString();
                }
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    m7287();
                }
                bitmap.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p257.InterfaceC3396
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Bitmap mo7282(int i, int i2, Bitmap.Config config) {
        Bitmap m7286 = m7286(i, i2, config);
        if (m7286 != null) {
            return m7286;
        }
        if (config == null) {
            config = f13251;
        }
        return Bitmap.createBitmap(i, i2, config);
    }

    @Override // p257.InterfaceC3396
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo7283(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            String str = "trimMemory, level=" + i;
        }
        if (i >= 40 || i >= 20) {
            mo7285();
        } else if (i >= 20 || i == 15) {
            m7281(this.f13254 / 2);
        }
    }

    @Override // p257.InterfaceC3396
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final synchronized void mo7284(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                this.f13253.getClass();
                if (AbstractC1746.m4698(bitmap) <= this.f13254 && this.f13258.contains(bitmap.getConfig())) {
                    this.f13253.getClass();
                    int m4698 = AbstractC1746.m4698(bitmap);
                    this.f13253.m7277(bitmap);
                    this.f13252.getClass();
                    this.f13255++;
                    this.f13259 += m4698;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        StringBuilder sb = new StringBuilder("Put bitmap in pool=");
                        this.f13253.getClass();
                        sb.append(C3392.m7275(AbstractC1746.m4698(bitmap), bitmap.getConfig()));
                        sb.toString();
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        m7287();
                    }
                    m7281(this.f13254);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb2 = new StringBuilder("Reject bitmap from pool, bitmap: ");
                this.f13253.getClass();
                sb2.append(C3392.m7275(AbstractC1746.m4698(bitmap), bitmap.getConfig()));
                sb2.append(", is mutable: ");
                sb2.append(bitmap.isMutable());
                sb2.append(", is allowed config: ");
                sb2.append(this.f13258.contains(bitmap.getConfig()));
                sb2.toString();
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // p257.InterfaceC3396
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void mo7285() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
        }
        m7281(0L);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized Bitmap m7286(int i, int i2, Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap m7278;
        try {
            if (Build.VERSION.SDK_INT >= 26) {
                config2 = Bitmap.Config.HARDWARE;
                if (config == config2) {
                    throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
                }
            }
            m7278 = this.f13253.m7278(i, i2, config != null ? config : f13251);
            if (m7278 == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb = new StringBuilder("Missing bitmap=");
                    this.f13253.getClass();
                    sb.append(C3392.m7275(AbstractC1746.m4699(config) * i * i2, config));
                    sb.toString();
                }
                this.f13257++;
            } else {
                this.f13256++;
                long j = this.f13259;
                this.f13253.getClass();
                this.f13259 = j - AbstractC1746.m4698(m7278);
                this.f13252.getClass();
                m7278.setHasAlpha(true);
                m7278.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb2 = new StringBuilder("Get bitmap=");
                this.f13253.getClass();
                sb2.append(C3392.m7275(AbstractC1746.m4699(config) * i * i2, config));
                sb2.toString();
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                m7287();
            }
        } catch (Throwable th) {
            throw th;
        }
        return m7278;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7287() {
        String str = "Hits=" + this.f13256 + ", misses=" + this.f13257 + ", puts=" + this.f13255 + ", evictions=" + this.f13260 + ", currentSize=" + this.f13259 + ", maxSize=" + this.f13254 + "\nStrategy=" + this.f13253;
    }
}
