package p395;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManager$MissingSchemeDataException;
import androidx.media3.exoplayer.drm.DrmSession$DrmSessionException;
import androidx.media3.exoplayer.drm.KeysExpiredException;
import androidx.media3.exoplayer.drm.UnsupportedDrmException;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import p003.C0783;
import p011.HandlerC0874;
import p012.C0894;
import p229.C3125;
import p283.RunnableC3568;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3726;
import p366.C4473;
import p384.C4603;
import p420.C4991;
import p421.InterfaceC5000;
import ˈˊ.ˉˆ;

/* renamed from: ⁱᴵ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4717 implements InterfaceC4735 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public byte[] f17813;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C0894 f17814;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public int f17815;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3125 f17816;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public byte[] f17817;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public C4716 f17818;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C0783 f17819;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4603 f17820;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final Looper f17821;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f17822;

    /* renamed from: ˏי, reason: contains not printable characters */
    public DrmSession$DrmSessionException f17823;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f17824;

    /* renamed from: יـ, reason: contains not printable characters */
    public InterfaceC5000 f17825;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public C4722 f17826;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final InterfaceC4718 f17827;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final HashMap f17828;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final HandlerC0874 f17829;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C3726 f17830;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public HandlerThread f17831;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4730 f17832;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List f17833;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public HandlerC4732 f17834;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final UUID f17835;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f17836;

    public C4717(UUID uuid, InterfaceC4730 interfaceC4730, C3125 c3125, C4603 c4603, List list, boolean z, boolean z2, byte[] bArr, HashMap hashMap, InterfaceC4718 interfaceC4718, Looper looper, C0894 c0894, C0783 c0783) {
        this.f17835 = uuid;
        this.f17816 = c3125;
        this.f17820 = c4603;
        this.f17832 = interfaceC4730;
        this.f17824 = z;
        this.f17836 = z2;
        if (bArr != null) {
            this.f17813 = bArr;
            this.f17833 = null;
        } else {
            list.getClass();
            this.f17833 = DesugarCollections.unmodifiableList(list);
        }
        this.f17828 = hashMap;
        this.f17827 = interfaceC4718;
        this.f17830 = new C3726();
        this.f17814 = c0894;
        this.f17819 = c0783;
        this.f17822 = 2;
        this.f17821 = looper;
        this.f17829 = new HandlerC0874(this, looper, 3);
    }

    @Override // p395.InterfaceC4735
    public final int getState() {
        m9464();
        return this.f17822;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:40|(2:41|42)|(6:44|45|46|47|(1:49)|51)|54|45|46|47|(0)|51) */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0073 A[Catch: NumberFormatException -> 0x0077, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x0077, blocks: (B:47:0x006b, B:49:0x0073), top: B:46:0x006b }] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9459(boolean r10) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p395.C4717.m9459(boolean):void");
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo9460(C4715 c4715) {
        m9464();
        if (this.f17815 < 0) {
            AbstractC3731.m7842("DefaultDrmSession", "Session reference count less than zero: " + this.f17815);
            this.f17815 = 0;
        }
        if (c4715 != null) {
            C3726 c3726 = this.f17830;
            synchronized (c3726.f14507) {
                try {
                    ArrayList arrayList = new ArrayList(c3726.f14508);
                    arrayList.add(c4715);
                    c3726.f14508 = DesugarCollections.unmodifiableList(arrayList);
                    Integer num = (Integer) c3726.f14509.get(c4715);
                    if (num == null) {
                        HashSet hashSet = new HashSet(c3726.f14506);
                        hashSet.add(c4715);
                        c3726.f14506 = DesugarCollections.unmodifiableSet(hashSet);
                    }
                    c3726.f14509.put(c4715, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                } finally {
                }
            }
        }
        int i = this.f17815 + 1;
        this.f17815 = i;
        if (i == 1) {
            AbstractC3731.m7857(this.f17822 == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f17831 = handlerThread;
            handlerThread.start();
            this.f17834 = new HandlerC4732(this, this.f17831.getLooper());
            if (m9463()) {
                m9459(true);
            }
        } else if (c4715 != null && m9461() && this.f17830.m7835(c4715) == 1) {
            c4715.m9454(this.f17822);
        }
        C4724 c4724 = (C4724) this.f17820.f17126;
        if (c4724.f17859 != -9223372036854775807L) {
            c4724.f17850.remove(this);
            Handler handler = c4724.f17847;
            handler.getClass();
            handler.removeCallbacksAndMessages(this);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m9461() {
        int i = this.f17822;
        return i == 3 || i == 4;
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo9462(C4715 c4715) {
        m9464();
        int i = this.f17815;
        if (i <= 0) {
            AbstractC3731.m7842("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i2 = i - 1;
        this.f17815 = i2;
        if (i2 == 0) {
            this.f17822 = 0;
            HandlerC0874 handlerC0874 = this.f17829;
            String str = AbstractC3712.f14481;
            handlerC0874.removeCallbacksAndMessages(null);
            HandlerC4732 handlerC4732 = this.f17834;
            synchronized (handlerC4732) {
                handlerC4732.removeCallbacksAndMessages(null);
                handlerC4732.f17882 = true;
            }
            this.f17834 = null;
            this.f17831.quit();
            this.f17831 = null;
            this.f17825 = null;
            this.f17823 = null;
            this.f17826 = null;
            this.f17818 = null;
            byte[] bArr = this.f17817;
            if (bArr != null) {
                this.f17832.mo9047(bArr);
                this.f17817 = null;
            }
        }
        if (c4715 != null) {
            this.f17830.m7834(c4715);
            if (this.f17830.m7835(c4715) == 0) {
                c4715.m9456();
            }
        }
        C4603 c4603 = this.f17820;
        int i3 = this.f17815;
        C4724 c4724 = (C4724) c4603.f17126;
        if (i3 == 1 && c4724.f17866 > 0 && c4724.f17859 != -9223372036854775807L) {
            c4724.f17850.add(this);
            Handler handler = c4724.f17847;
            handler.getClass();
            handler.postAtTime(new RunnableC3568(13, this), this, SystemClock.uptimeMillis() + c4724.f17859);
        } else if (i3 == 0) {
            c4724.f17863.remove(this);
            if (c4724.f17857 == this) {
                c4724.f17857 = null;
            }
            if (c4724.f17856 == this) {
                c4724.f17856 = null;
            }
            C3125 c3125 = c4724.f17860;
            HashSet hashSet = (HashSet) c3125.f11943;
            hashSet.remove(this);
            if (((C4717) c3125.f11941) == this) {
                c3125.f11941 = null;
                if (!hashSet.isEmpty()) {
                    C4717 c4717 = (C4717) hashSet.iterator().next();
                    c3125.f11941 = c4717;
                    C4716 mo9052 = c4717.f17832.mo9052();
                    c4717.f17818 = mo9052;
                    HandlerC4732 handlerC47322 = c4717.f17834;
                    String str2 = AbstractC3712.f14481;
                    mo9052.getClass();
                    handlerC47322.getClass();
                    handlerC47322.obtainMessage(1, new C4731(C4991.f18644.getAndIncrement(), true, SystemClock.elapsedRealtime(), mo9052)).sendToTarget();
                }
            }
            if (c4724.f17859 != -9223372036854775807L) {
                Handler handler2 = c4724.f17847;
                handler2.getClass();
                handler2.removeCallbacksAndMessages(this);
                c4724.f17850.remove(this);
            }
        }
        c4724.m9479();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0059  */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9463() {
        /*
            r4 = this;
            boolean r0 = r4.m9461()
            r1 = 1
            if (r0 == 0) goto L8
            return r1
        L8:
            ⁱᴵ.ᵔﹳ r0 = r4.f17832     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            byte[] r0 = r0.mo9050()     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            r4.f17817 = r0     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            ⁱᴵ.ᵔﹳ r2 = r4.f17832     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            ʻʿ.יـ r3 = r4.f17819     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            r2.mo9060(r0, r3)     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            ⁱᴵ.ᵔﹳ r0 = r4.f17832     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            byte[] r2 = r4.f17817     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            ﹳⁱ.ﹳٴ r0 = r0.mo9059(r2)     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            r4.f17825 = r0     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            r0 = 3
            r4.f17822 = r0     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            ᐧˎ.ᵎﹶ r2 = r4.f17830     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            java.lang.Object r3 = r2.f14507     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            monitor-enter(r3)     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            java.util.Set r2 = r2.f14506     // Catch: java.lang.Throwable -> L4a
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4a
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
        L30:
            boolean r3 = r2.hasNext()     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            if (r3 == 0) goto L40
            java.lang.Object r3 = r2.next()     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            ⁱᴵ.ʼˎ r3 = (p395.C4715) r3     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            r3.m9454(r0)     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            goto L30
        L40:
            byte[] r0 = r4.f17817     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            r0.getClass()     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
            return r1
        L46:
            r0 = move-exception
            goto L4d
        L48:
            r0 = move-exception
            goto L4d
        L4a:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4a
            throw r0     // Catch: java.lang.NoSuchMethodError -> L46 java.lang.Exception -> L48 android.media.NotProvisionedException -> L5d
        L4d:
            boolean r2 = ˈˊ.ˉˆ.ʻٴ(r0)
            if (r2 == 0) goto L59
            ˑʼ.ᵎˊ r0 = r4.f17816
            r0.m6835(r4)
            goto L62
        L59:
            r4.m9466(r1, r0)
            goto L62
        L5d:
            ˑʼ.ᵎˊ r0 = r4.f17816
            r0.m6835(r4)
        L62:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p395.C4717.m9463():boolean");
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m9464() {
        Thread currentThread = Thread.currentThread();
        Looper looper = this.f17821;
        if (currentThread != looper.getThread()) {
            AbstractC3731.m7859("DefaultDrmSession", "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + looper.getThread().getName(), new IllegalStateException());
        }
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean mo9465(String str) {
        m9464();
        byte[] bArr = this.f17817;
        AbstractC3731.m7868(bArr);
        return this.f17832.mo9054(str, bArr);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m9466(int i, Throwable th) {
        int i2;
        Set set;
        if (th instanceof MediaDrm.MediaDrmStateException) {
            i2 = AbstractC3712.m7805(AbstractC3712.m7763(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        } else {
            if (!(th instanceof MediaDrmResetException)) {
                if (!(th instanceof NotProvisionedException) && !ˉˆ.ʻٴ(th)) {
                    if (th instanceof DeniedByServerException) {
                        i2 = 6007;
                    } else if (th instanceof UnsupportedDrmException) {
                        i2 = 6001;
                    } else if (th instanceof DefaultDrmSessionManager$MissingSchemeDataException) {
                        i2 = 6003;
                    } else if (th instanceof KeysExpiredException) {
                        i2 = 6008;
                    } else if (i != 1) {
                        if (i == 2) {
                            i2 = 6004;
                        } else if (i != 3) {
                            throw new IllegalArgumentException();
                        }
                    }
                }
                i2 = 6002;
            }
            i2 = 6006;
        }
        this.f17823 = new DrmSession$DrmSessionException(i2, th);
        AbstractC3731.m7863("DefaultDrmSession", "DRM session error", th);
        if (th instanceof Exception) {
            C3726 c3726 = this.f17830;
            synchronized (c3726.f14507) {
                set = c3726.f14506;
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                ((C4715) it.next()).m9455((Exception) th);
            }
        } else {
            if (!(th instanceof Error)) {
                throw new IllegalStateException("Unexpected Throwable subclass", th);
            }
            if (!ˉˆ.ـˆ(th) && !ˉˆ.ʻٴ(th)) {
                throw ((Error) th);
            }
        }
        if (this.f17822 != 4) {
            this.f17822 = 1;
        }
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC5000 mo9467() {
        m9464();
        return this.f17825;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m9468(int i, boolean z, byte[] bArr) {
        try {
            C4722 mo9048 = this.f17832.mo9048(bArr, this.f17833, i, this.f17828);
            this.f17826 = mo9048;
            HandlerC4732 handlerC4732 = this.f17834;
            String str = AbstractC3712.f14481;
            mo9048.getClass();
            handlerC4732.getClass();
            handlerC4732.obtainMessage(2, new C4731(C4991.f18644.getAndIncrement(), z, SystemClock.elapsedRealtime(), mo9048)).sendToTarget();
        } catch (Exception | NoSuchMethodError e) {
            m9472(e, true);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9469(C4473 c4473) {
        Set set;
        C3726 c3726 = this.f17830;
        synchronized (c3726.f14507) {
            set = c3726.f14506;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ((C4715) it.next()).m9458();
        }
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final UUID mo9470() {
        m9464();
        return this.f17835;
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo9471() {
        m9464();
        return this.f17824;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m9472(Throwable th, boolean z) {
        if ((th instanceof NotProvisionedException) || ˉˆ.ʻٴ(th)) {
            this.f17816.m6835(this);
        } else {
            m9466(z ? 1 : 2, th);
        }
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final DrmSession$DrmSessionException mo9473() {
        m9464();
        if (this.f17822 == 1) {
            return this.f17823;
        }
        return null;
    }
}
