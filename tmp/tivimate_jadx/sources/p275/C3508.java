package p275;

import android.os.Handler;
import android.os.Looper;
import androidx.leanback.widget.RunnableC0114;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p255.C3370;
import ˈˊ.ˉˆ;
import ᵎˉ.ⁱˊ;

/* renamed from: ـﹶ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3508 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final Object f13825 = new Object();

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static volatile C3508 f13826;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C3509 f13827;

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile int f13828;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Handler f13829;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3526 f13830;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final ⁱˊ f13831;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f13832;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3370 f13833;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ReentrantReadWriteLock f13834;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final InterfaceC3503 f13835;

    /* JADX WARN: Type inference failed for: r6v5, types: [ᵎˉ.ⁱˊ, java.lang.Object] */
    public C3508(C3524 c3524) {
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock();
        this.f13834 = reentrantReadWriteLock;
        this.f13828 = 3;
        InterfaceC3503 interfaceC3503 = (InterfaceC3503) c3524.f4813;
        this.f13835 = interfaceC3503;
        int i = c3524.f4814;
        this.f13832 = i;
        this.f13827 = (C3509) c3524.f4812;
        this.f13829 = new Handler(Looper.getMainLooper());
        this.f13833 = new C3370(0);
        this.f13831 = new Object();
        C3526 c3526 = new C3526(this);
        this.f13830 = c3526;
        reentrantReadWriteLock.writeLock().lock();
        if (i == 0) {
            try {
                this.f13828 = 0;
            } catch (Throwable th) {
                this.f13834.writeLock().unlock();
                throw th;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
        if (m7477() == 0) {
            try {
                interfaceC3503.mo7447(new C3513(c3526));
            } catch (Throwable th2) {
                m7475(th2);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3508 m7473() {
        C3508 c3508;
        synchronized (f13825) {
            try {
                c3508 = f13826;
                if (!(c3508 != null)) {
                    throw new IllegalStateException("EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK's manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message.");
                }
            } finally {
            }
        }
        return c3508;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7474() {
        if (!(this.f13832 == 1)) {
            throw new IllegalStateException("Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading");
        }
        if (m7477() == 1) {
            return;
        }
        this.f13834.writeLock().lock();
        try {
            if (this.f13828 == 0) {
                return;
            }
            this.f13828 = 0;
            this.f13834.writeLock().unlock();
            C3526 c3526 = this.f13830;
            C3508 c3508 = (C3508) c3526.f13866;
            try {
                c3508.f13835.mo7447(new C3513(c3526));
            } catch (Throwable th) {
                c3508.m7475(th);
            }
        } finally {
            this.f13834.writeLock().unlock();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7475(Throwable th) {
        ArrayList arrayList = new ArrayList();
        this.f13834.writeLock().lock();
        try {
            this.f13828 = 2;
            arrayList.addAll(this.f13833);
            this.f13833.clear();
            this.f13834.writeLock().unlock();
            this.f13829.post(new RunnableC0114(arrayList, this.f13828, th));
        } catch (Throwable th2) {
            this.f13834.writeLock().unlock();
            throw th2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00a2 A[Catch: all -> 0x0085, TryCatch #0 {all -> 0x0085, blocks: (B:28:0x005d, B:31:0x0062, B:33:0x0066, B:35:0x0073, B:37:0x0092, B:39:0x009c, B:41:0x009f, B:43:0x00a2, B:45:0x00b2, B:46:0x00b5), top: B:27:0x005d }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v13, types: [ـﹶ.ᵢˏ, java.lang.Object] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.CharSequence m7476(java.lang.CharSequence r11, int r12, int r13) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p275.C3508.m7476(java.lang.CharSequence, int, int):java.lang.CharSequence");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m7477() {
        this.f13834.readLock().lock();
        try {
            return this.f13828;
        } finally {
            this.f13834.readLock().unlock();
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m7478(AbstractC3519 abstractC3519) {
        ˉˆ.ﾞᴵ(abstractC3519, "initCallback cannot be null");
        this.f13834.writeLock().lock();
        try {
            if (this.f13828 != 1 && this.f13828 != 2) {
                this.f13833.add(abstractC3519);
                this.f13834.writeLock().unlock();
            }
            this.f13829.post(new RunnableC0114(Arrays.asList(abstractC3519), this.f13828, (Throwable) null));
            this.f13834.writeLock().unlock();
        } catch (Throwable th) {
            this.f13834.writeLock().unlock();
            throw th;
        }
    }
}
