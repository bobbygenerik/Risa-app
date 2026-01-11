package p324;

import com.bumptech.glide.ʽ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.CompletionHandlerException;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.TimeoutCancellationException;
import p126.InterfaceC2138;
import p126.InterfaceC2139;
import p126.InterfaceC2142;
import p152.AbstractC2444;
import p153.C2468;
import p153.C2479;
import p316.AbstractC3902;
import p316.AbstractC3906;
import p329.InterfaceC4087;
import p329.InterfaceC4106;
import ʼⁱ.ᴵˊ;
import ʽٴ.ˈ;
import ˉᵎ.ⁱˊ;

/* renamed from: ᴵי.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4031 implements InterfaceC4036, InterfaceC4026 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15415 = AtomicReferenceFieldUpdater.newUpdater(C4031.class, Object.class, "_state$volatile");

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15416 = AtomicReferenceFieldUpdater.newUpdater(C4031.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    public C4031(boolean z) {
        this._state$volatile = z ? AbstractC3999.f15370 : AbstractC3999.f15368;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public static C4010 m8226(C2468 c2468) {
        while (c2468.mo5593()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C2468.f9438;
            C2468 m5597 = c2468.m5597();
            if (m5597 == null) {
                Object obj = atomicReferenceFieldUpdater.get(c2468);
                while (true) {
                    c2468 = (C2468) obj;
                    if (!c2468.mo5593()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(c2468);
                }
            } else {
                c2468 = m5597;
            }
        }
        while (true) {
            c2468 = c2468.m5596();
            if (!c2468.mo5593()) {
                if (c2468 instanceof C4010) {
                    return (C4010) c2468;
                }
                if (c2468 instanceof C4018) {
                    return null;
                }
            }
        }
    }

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public static String m8227(Object obj) {
        if (!(obj instanceof C4033)) {
            return obj instanceof InterfaceC4024 ? ((InterfaceC4024) obj).mo8150() ? "Active" : "New" : obj instanceof C4022 ? "Cancelled" : "Completed";
        }
        C4033 c4033 = (C4033) obj;
        return c4033.m8259() ? "Cancelling" : C4033.f15421.get(c4033) == 1 ? "Completing" : "Active";
    }

    @Override // p126.InterfaceC2142
    public final InterfaceC2138 getKey() {
        return C3997.f15367;
    }

    @Override // p324.InterfaceC4036
    public final boolean isCancelled() {
        Object obj = f15415.get(this);
        if (obj instanceof C4022) {
            return true;
        }
        return (obj instanceof C4033) && ((C4033) obj).m8259();
    }

    @Override // p324.InterfaceC4036
    public final boolean start() {
        int m8248;
        do {
            m8248 = m8248(f15415.get(this));
            if (m8248 == 0) {
                return false;
            }
        } while (m8248 != 1);
        return true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(mo8144() + '{' + m8227(f15415.get(this)) + '}');
        sb.append('@');
        sb.append(AbstractC3999.m8173(this));
        return sb.toString();
    }

    /* renamed from: ʻٴ */
    public boolean mo4718(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return m8256(th) && mo8199();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Throwable] */
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final Throwable m8228(Object obj) {
        CancellationException cancellationException;
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(mo8232(), null, this) : th;
        }
        C4031 c4031 = (C4031) ((InterfaceC4026) obj);
        c4031.getClass();
        Object obj2 = f15415.get(c4031);
        if (obj2 instanceof C4033) {
            cancellationException = ((C4033) obj2).m8260();
        } else if (obj2 instanceof C4022) {
            cancellationException = ((C4022) obj2).f15404;
        } else {
            if (obj2 instanceof InterfaceC4024) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + obj2).toString());
            }
            cancellationException = null;
        }
        CancellationException cancellationException2 = cancellationException instanceof CancellationException ? cancellationException : null;
        return cancellationException2 == null ? new JobCancellationException("Parent job is ".concat(m8227(obj2)), cancellationException, c4031) : cancellationException2;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final Object m8229(AbstractC3902 abstractC3902) {
        Object obj;
        do {
            obj = f15415.get(this);
            if (!(obj instanceof InterfaceC4024)) {
                if (obj instanceof C4022) {
                    throw ((C4022) obj).f15404;
                }
                return AbstractC3999.m8157(obj);
            }
        } while (m8248(obj) < 0);
        C4001 c4001 = new C4001(ⁱˊ.ˈٴ(abstractC3902), this);
        c4001.m8206();
        c4001.m8207(new C4046(2, AbstractC3999.m8175(this, true, new C4009(3, c4001))));
        return c4001.m8209();
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean mo8230() {
        Object obj = f15415.get(this);
        return (obj instanceof InterfaceC4024) && ((InterfaceC4024) obj).mo8150();
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Throwable m8231(C4033 c4033, ArrayList arrayList) {
        Object obj;
        Object obj2 = null;
        if (arrayList.isEmpty()) {
            if (c4033.m8259()) {
                return new JobCancellationException(mo8232(), null, this);
            }
            return null;
        }
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                obj = null;
                break;
            }
            obj = arrayList.get(i2);
            i2++;
            if (!(((Throwable) obj) instanceof CancellationException)) {
                break;
            }
        }
        Throwable th = (Throwable) obj;
        if (th != null) {
            return th;
        }
        Throwable th2 = (Throwable) arrayList.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            int size2 = arrayList.size();
            while (true) {
                if (i >= size2) {
                    break;
                }
                Object obj3 = arrayList.get(i);
                i++;
                Throwable th3 = (Throwable) obj3;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj2 = obj3;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj2;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public String mo8232() {
        return "Job was cancelled";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.RuntimeException, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Throwable, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m8233(InterfaceC4024 interfaceC4024, Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15416;
        InterfaceC4043 interfaceC4043 = (InterfaceC4043) atomicReferenceFieldUpdater.get(this);
        if (interfaceC4043 != null) {
            interfaceC4043.mo4747();
            atomicReferenceFieldUpdater.set(this, C3989.f15358);
        }
        CompletionHandlerException completionHandlerException = 0;
        C4022 c4022 = obj instanceof C4022 ? (C4022) obj : null;
        Throwable th = c4022 != null ? c4022.f15404 : null;
        if (interfaceC4024 instanceof AbstractC4000) {
            try {
                ((AbstractC4000) interfaceC4024).mo8154(th);
                return;
            } catch (Throwable th2) {
                mo8254(new RuntimeException("Exception in completion handler " + interfaceC4024 + " for " + this, th2));
                return;
            }
        }
        C4018 mo8151 = interfaceC4024.mo8151();
        if (mo8151 != null) {
            mo8151.m5594(new C2479(1), 1);
            C2468 c2468 = (C2468) C2468.f9437.get(mo8151);
            while (!AbstractC2444.m5562(c2468, mo8151)) {
                if (c2468 instanceof AbstractC4000) {
                    try {
                        ((AbstractC4000) c2468).mo8154(th);
                    } catch (Throwable th3) {
                        if (completionHandlerException != 0) {
                            ˈ.ⁱˊ((Throwable) completionHandlerException, th3);
                        } else {
                            completionHandlerException = new RuntimeException("Exception in completion handler " + c2468 + " for " + this, th3);
                        }
                    }
                }
                c2468 = c2468.m5596();
                completionHandlerException = completionHandlerException;
            }
            if (completionHandlerException != 0) {
                mo8254(completionHandlerException);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ᴵי.ˏᵢ, ˊʽ.ˆʾ] */
    /* renamed from: ʿ, reason: contains not printable characters */
    public final void m8234(C4027 c4027) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ?? c2468 = new C2468();
        C3991 c3991 = c2468;
        if (!c4027.f15406) {
            c3991 = new C3991(c2468);
        }
        do {
            atomicReferenceFieldUpdater = f15415;
            if (atomicReferenceFieldUpdater.compareAndSet(this, c4027, c3991)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == c4027);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ʿᵢ */
    public final Object mo3418(Object obj, InterfaceC4087 interfaceC4087) {
        return interfaceC4087.mo3749(obj, this);
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final boolean m8235() {
        return !(f15415.get(this) instanceof InterfaceC4024);
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final CancellationException mo8236() {
        CancellationException cancellationException;
        Object obj = f15415.get(this);
        if (!(obj instanceof C4033)) {
            if (obj instanceof InterfaceC4024) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (!(obj instanceof C4022)) {
                return new JobCancellationException(getClass().getSimpleName().concat(" has completed normally"), null, this);
            }
            Throwable th = ((C4022) obj).f15404;
            cancellationException = th instanceof CancellationException ? (CancellationException) th : null;
            return cancellationException == null ? new JobCancellationException(mo8232(), th, this) : cancellationException;
        }
        Throwable m8260 = ((C4033) obj).m8260();
        if (m8260 == null) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        String concat = getClass().getSimpleName().concat(" is cancelling");
        cancellationException = m8260 instanceof CancellationException ? (CancellationException) m8260 : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        if (concat == null) {
            concat = mo8232();
        }
        return new JobCancellationException(concat, m8260, this);
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object m8237(AbstractC3906 abstractC3906) {
        return m8229(abstractC3906);
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public void mo8238(Object obj) {
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public Object m8239() {
        return m8250();
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public void m8240() {
    }

    /* renamed from: ˉٴ */
    public boolean mo3910(Throwable th) {
        return false;
    }

    /* renamed from: ˊʻ */
    public boolean mo8198() {
        return this instanceof C4047;
    }

    /* renamed from: ˊˋ */
    public String mo8144() {
        return getClass().getSimpleName();
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ˊᵔ */
    public final InterfaceC2142 mo3419(InterfaceC2138 interfaceC2138) {
        return com.bumptech.glide.ˈ.ᵔﹳ(this, interfaceC2138);
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final Object m8241(Object obj) {
        Object m8243;
        do {
            m8243 = m8243(f15415.get(this), obj);
            if (m8243 == AbstractC3999.f15371) {
                String str = "Job " + this + " is already complete or completing, but is being completed with " + obj;
                C4022 c4022 = obj instanceof C4022 ? (C4022) obj : null;
                throw new IllegalStateException(str, c4022 != null ? c4022.f15404 : null);
            }
        } while (m8243 == AbstractC3999.f15377);
        return m8243;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m8242(Throwable th) {
        if (mo5616()) {
            return true;
        }
        boolean z = th instanceof CancellationException;
        InterfaceC4043 interfaceC4043 = (InterfaceC4043) f15416.get(this);
        return (interfaceC4043 == null || interfaceC4043 == C3989.f15358) ? z : interfaceC4043.mo8145(th) || z;
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final Object m8243(Object obj, Object obj2) {
        if (!(obj instanceof InterfaceC4024)) {
            return AbstractC3999.f15371;
        }
        if (((obj instanceof C4027) || (obj instanceof AbstractC4000)) && !(obj instanceof C4010) && !(obj2 instanceof C4022)) {
            InterfaceC4024 interfaceC4024 = (InterfaceC4024) obj;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15415;
            Object c4050 = obj2 instanceof InterfaceC4024 ? new C4050((InterfaceC4024) obj2) : obj2;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, interfaceC4024, c4050)) {
                if (atomicReferenceFieldUpdater.get(this) != interfaceC4024) {
                    return AbstractC3999.f15377;
                }
            }
            mo3911(null);
            mo8238(obj2);
            m8233(interfaceC4024, obj2);
            return obj2;
        }
        InterfaceC4024 interfaceC40242 = (InterfaceC4024) obj;
        C4018 m8247 = m8247(interfaceC40242);
        if (m8247 == null) {
            return AbstractC3999.f15377;
        }
        C4033 c4033 = interfaceC40242 instanceof C4033 ? (C4033) interfaceC40242 : null;
        if (c4033 == null) {
            c4033 = new C4033(m8247, null);
        }
        synchronized (c4033) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = C4033.f15421;
            if (atomicIntegerFieldUpdater.get(c4033) == 1) {
                return AbstractC3999.f15371;
            }
            atomicIntegerFieldUpdater.set(c4033, 1);
            if (c4033 != interfaceC40242) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f15415;
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, interfaceC40242, c4033)) {
                    if (atomicReferenceFieldUpdater2.get(this) != interfaceC40242) {
                        return AbstractC3999.f15377;
                    }
                }
            }
            boolean m8259 = c4033.m8259();
            C4022 c4022 = obj2 instanceof C4022 ? (C4022) obj2 : null;
            if (c4022 != null) {
                c4033.m8261(c4022.f15404);
            }
            Throwable m8260 = m8259 ? null : c4033.m8260();
            if (m8260 != null) {
                m8245(m8247, m8260);
            }
            C4010 m8226 = m8226(m8247);
            if (m8226 != null && m8249(c4033, m8226, obj2)) {
                return AbstractC3999.f15372;
            }
            m8247.m5594(new C2479(2), 2);
            C4010 m82262 = m8226(m8247);
            return (m82262 == null || !m8249(c4033, m82262, obj2)) ? m8257(c4033, obj2) : AbstractC3999.f15372;
        }
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final boolean m8244(Object obj) {
        Object m8243;
        do {
            m8243 = m8243(f15415.get(this), obj);
            if (m8243 == AbstractC3999.f15371) {
                return false;
            }
            if (m8243 == AbstractC3999.f15372) {
                return true;
            }
        } while (m8243 == AbstractC3999.f15377);
        mo5614(m8243);
        return true;
    }

    /* renamed from: ˑﹳ */
    public void mo5614(Object obj) {
    }

    /* renamed from: יـ */
    public void mo3907(CancellationException cancellationException) {
        m8256(cancellationException);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ـˆ */
    public final InterfaceC2139 mo3420(InterfaceC2138 interfaceC2138) {
        return com.bumptech.glide.ˈ.ʾˋ(this, interfaceC2138);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Throwable, kotlinx.coroutines.CompletionHandlerException] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m8245(C4018 c4018, Throwable th) {
        mo3911(th);
        c4018.m5594(new C2479(4), 4);
        C2468 c2468 = (C2468) C2468.f9437.get(c4018);
        CompletionHandlerException completionHandlerException = 0;
        while (!AbstractC2444.m5562(c2468, c4018)) {
            if ((c2468 instanceof AbstractC4000) && ((AbstractC4000) c2468).mo8153()) {
                try {
                    ((AbstractC4000) c2468).mo8154(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != 0) {
                        ˈ.ⁱˊ((Throwable) completionHandlerException, th2);
                    } else {
                        completionHandlerException = new RuntimeException("Exception in completion handler " + c2468 + " for " + this, th2);
                    }
                }
            }
            c2468 = c2468.m5596();
            completionHandlerException = completionHandlerException;
        }
        if (completionHandlerException != 0) {
            mo8254(completionHandlerException);
        }
        m8242(th);
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m8246(InterfaceC4036 interfaceC4036) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15416;
        C3989 c3989 = C3989.f15358;
        if (interfaceC4036 == null) {
            atomicReferenceFieldUpdater.set(this, c3989);
            return;
        }
        interfaceC4036.start();
        InterfaceC4043 mo8252 = interfaceC4036.mo8252(this);
        atomicReferenceFieldUpdater.set(this, mo8252);
        if (m8235()) {
            mo8252.mo4747();
            atomicReferenceFieldUpdater.set(this, c3989);
        }
    }

    /* JADX WARN: Type inference failed for: r4v5, types: [ᴵי.ˏᵢ, ˊʽ.ˆʾ] */
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C4018 m8247(InterfaceC4024 interfaceC4024) {
        C4018 mo8151 = interfaceC4024.mo8151();
        if (mo8151 != null) {
            return mo8151;
        }
        if (interfaceC4024 instanceof C4027) {
            return new C2468();
        }
        if (interfaceC4024 instanceof AbstractC4000) {
            m8253((AbstractC4000) interfaceC4024);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + interfaceC4024).toString());
    }

    /* renamed from: ٴﹶ */
    public void mo5615(Object obj) {
        mo5614(obj);
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final int m8248(Object obj) {
        boolean z = obj instanceof C4027;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15415;
        if (z) {
            if (((C4027) obj).f15406) {
                return 0;
            }
            C4027 c4027 = AbstractC3999.f15370;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c4027)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    return -1;
                }
            }
            return 1;
        }
        if (!(obj instanceof C3991)) {
            return 0;
        }
        C4018 c4018 = ((C3991) obj).f15361;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c4018)) {
            if (atomicReferenceFieldUpdater.get(this) != obj) {
                return -1;
            }
        }
        return 1;
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final boolean m8249(C4033 c4033, C4010 c4010, Object obj) {
        while (AbstractC3999.m8175(c4010.f15391, false, new C4040(this, c4033, c4010, obj)) == C3989.f15358) {
            c4010 = m8226(c4010);
            if (c4010 == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object m8250() {
        Object obj = f15415.get(this);
        if (obj instanceof InterfaceC4024) {
            throw new IllegalStateException("This job has not completed yet");
        }
        if (obj instanceof C4022) {
            throw ((C4022) obj).f15404;
        }
        return AbstractC3999.m8157(obj);
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final InterfaceC4041 mo8251(InterfaceC4106 interfaceC4106) {
        return m8255(true, new C4009(2, interfaceC4106));
    }

    /* renamed from: ᴵᵔ */
    public boolean mo8199() {
        return true;
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final InterfaceC4043 mo8252(C4031 c4031) {
        C4010 c4010 = new C4010(c4031);
        c4010.f15378 = this;
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15415;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof C4027) {
                C4027 c4027 = (C4027) obj;
                if (c4027.f15406) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c4010)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                m8234(c4027);
            } else {
                boolean z = obj instanceof InterfaceC4024;
                C3989 c3989 = C3989.f15358;
                if (!z) {
                    Object obj2 = atomicReferenceFieldUpdater.get(this);
                    C4022 c4022 = obj2 instanceof C4022 ? (C4022) obj2 : null;
                    c4010.mo8154(c4022 != null ? c4022.f15404 : null);
                    return c3989;
                }
                C4018 mo8151 = ((InterfaceC4024) obj).mo8151();
                if (mo8151 == null) {
                    m8253((AbstractC4000) obj);
                } else if (!mo8151.m5594(c4010, 7)) {
                    boolean m5594 = mo8151.m5594(c4010, 3);
                    Object obj3 = atomicReferenceFieldUpdater.get(this);
                    if (obj3 instanceof C4033) {
                        r4 = ((C4033) obj3).m8260();
                    } else {
                        C4022 c40222 = obj3 instanceof C4022 ? (C4022) obj3 : null;
                        if (c40222 != null) {
                            r4 = c40222.f15404;
                        }
                    }
                    c4010.mo8154(r4);
                    if (m5594) {
                        break loop0;
                    }
                    return c3989;
                }
            }
        }
        return c4010;
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final void m8253(AbstractC4000 abstractC4000) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C2468 c2468 = new C2468();
        abstractC4000.getClass();
        C2468.f9438.set(c2468, abstractC4000);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = C2468.f9437;
        atomicReferenceFieldUpdater2.set(c2468, abstractC4000);
        loop0: while (true) {
            if (atomicReferenceFieldUpdater2.get(abstractC4000) != abstractC4000) {
                break;
            }
            while (!atomicReferenceFieldUpdater2.compareAndSet(abstractC4000, abstractC4000, c2468)) {
                if (atomicReferenceFieldUpdater2.get(abstractC4000) != abstractC4000) {
                    break;
                }
            }
            c2468.m5595(abstractC4000);
        }
        C2468 m5596 = abstractC4000.m5596();
        do {
            atomicReferenceFieldUpdater = f15415;
            if (atomicReferenceFieldUpdater.compareAndSet(this, abstractC4000, m5596)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == abstractC4000);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public void mo8254(CompletionHandlerException completionHandlerException) {
        throw completionHandlerException;
    }

    @Override // p324.InterfaceC4036, p041.InterfaceC1298
    /* renamed from: ᵎﹶ */
    public void mo3899(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(mo8232(), null, this);
        }
        mo3907(cancellationException);
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final InterfaceC4041 m8255(boolean z, AbstractC4000 abstractC4000) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        C3989 c3989;
        boolean z2;
        boolean m5594;
        abstractC4000.f15378 = this;
        loop0: while (true) {
            atomicReferenceFieldUpdater = f15415;
            Object obj = atomicReferenceFieldUpdater.get(this);
            boolean z3 = obj instanceof C4027;
            c3989 = C3989.f15358;
            z2 = true;
            if (!z3) {
                if (!(obj instanceof InterfaceC4024)) {
                    z2 = false;
                    break;
                }
                InterfaceC4024 interfaceC4024 = (InterfaceC4024) obj;
                C4018 mo8151 = interfaceC4024.mo8151();
                if (mo8151 == null) {
                    m8253((AbstractC4000) obj);
                } else {
                    if (abstractC4000.mo8153()) {
                        C4033 c4033 = interfaceC4024 instanceof C4033 ? (C4033) interfaceC4024 : null;
                        Throwable m8260 = c4033 != null ? c4033.m8260() : null;
                        if (m8260 == null) {
                            m5594 = mo8151.m5594(abstractC4000, 5);
                        } else if (z) {
                            abstractC4000.mo8154(m8260);
                            return c3989;
                        }
                    } else {
                        m5594 = mo8151.m5594(abstractC4000, 1);
                    }
                    if (m5594) {
                        break;
                    }
                }
            } else {
                C4027 c4027 = (C4027) obj;
                if (c4027.f15406) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, abstractC4000)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
                m8234(c4027);
            }
        }
        if (z2) {
            return abstractC4000;
        }
        if (z) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            C4022 c4022 = obj2 instanceof C4022 ? (C4022) obj2 : null;
            abstractC4000.mo8154(c4022 != null ? c4022.f15404 : null);
        }
        return c3989;
    }

    /* renamed from: ᵔٴ */
    public boolean mo5616() {
        return this instanceof C4056;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
    
        r0 = p324.AbstractC3999.f15371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
    
        if (r0 != p324.AbstractC3999.f15372) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0104, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0024, code lost:
    
        r0 = m8243(r0, new p324.C4022(m8228(r10), false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
    
        if (r0 == p324.AbstractC3999.f15377) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
    
        if (r0 != p324.AbstractC3999.f15371) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0042, code lost:
    
        r0 = null;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
    
        r4 = p324.C4031.f15415;
        r5 = r4.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        if ((r5 instanceof p324.C4033) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009b, code lost:
    
        if ((r5 instanceof p324.InterfaceC4024) == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x009d, code lost:
    
        if (r1 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009f, code lost:
    
        r1 = m8228(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a3, code lost:
    
        r6 = (p324.InterfaceC4024) r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x0008, code lost:
    
        if (mo8198() != false) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00aa, code lost:
    
        if (r6.mo8150() == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00cc, code lost:
    
        r4 = m8243(r5, new p324.C4022(r1, false));
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d7, code lost:
    
        if (r4 == p324.AbstractC3999.f15371) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00db, code lost:
    
        if (r4 == p324.AbstractC3999.f15377) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00dd, code lost:
    
        r0 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        r0 = p324.C4031.f15415.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f6, code lost:
    
        throw new java.lang.IllegalStateException(("Cannot happen in " + r5).toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ac, code lost:
    
        r7 = m8247(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b0, code lost:
    
        if (r7 != null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b3, code lost:
    
        r8 = new p324.C4033(r7, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00bc, code lost:
    
        if (r4.compareAndSet(r9, r6, r8) == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if ((r0 instanceof p324.InterfaceC4024) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c8, code lost:
    
        if (r4.get(r9) == r6) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00be, code lost:
    
        m8245(r7, r1);
        r10 = p324.AbstractC3999.f15371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0064, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f7, code lost:
    
        r10 = p324.AbstractC3999.f15373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x004e, code lost:
    
        monitor-enter(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x005a, code lost:
    
        if (p324.C4033.f15420.get((p324.C4033) r5) != p324.AbstractC3999.f15374) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x005c, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x005f, code lost:
    
        if (r4 == false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0061, code lost:
    
        r10 = p324.AbstractC3999.f15373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0063, code lost:
    
        monitor-exit(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0069, code lost:
    
        r4 = ((p324.C4033) r5).m8259();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if ((r0 instanceof p324.C4033) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0070, code lost:
    
        if (r10 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0072, code lost:
    
        if (r4 != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0080, code lost:
    
        r10 = ((p324.C4033) r5).m8260();
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0087, code lost:
    
        if (r4 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0089, code lost:
    
        r0 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x008a, code lost:
    
        monitor-exit(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x008b, code lost:
    
        if (r0 == null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x008d, code lost:
    
        m8245(((p324.C4033) r5).f15422, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0094, code lost:
    
        r10 = p324.AbstractC3999.f15371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0074, code lost:
    
        if (r1 != null) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0076, code lost:
    
        r1 = m8228(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x007a, code lost:
    
        ((p324.C4033) r5).m8261(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x005e, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00fd, code lost:
    
        if (r0 != p324.AbstractC3999.f15371) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0102, code lost:
    
        if (r0 != p324.AbstractC3999.f15372) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0021, code lost:
    
        if (p324.C4033.f15421.get((p324.C4033) r0) != 1) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0107, code lost:
    
        if (r0 != p324.AbstractC3999.f15373) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0109, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x010a, code lost:
    
        mo5614(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x010d, code lost:
    
        return true;
     */
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8256(java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.C4031.m8256(java.lang.Object):boolean");
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final Object m8257(C4033 c4033, Object obj) {
        boolean m8259;
        Throwable m8231;
        C4022 c4022 = obj instanceof C4022 ? (C4022) obj : null;
        Throwable th = c4022 != null ? c4022.f15404 : null;
        synchronized (c4033) {
            m8259 = c4033.m8259();
            ArrayList m8262 = c4033.m8262(th);
            m8231 = m8231(c4033, m8262);
            if (m8231 != null && m8262.size() > 1) {
                Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap(m8262.size()));
                int size = m8262.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = m8262.get(i);
                    i++;
                    Throwable th2 = (Throwable) obj2;
                    if (th2 != m8231 && th2 != m8231 && !(th2 instanceof CancellationException) && newSetFromMap.add(th2)) {
                        ˈ.ⁱˊ(m8231, th2);
                    }
                }
            }
        }
        if (m8231 != null && m8231 != th) {
            obj = new C4022(m8231, false);
        }
        if (m8231 != null && (m8242(m8231) || mo3910(m8231))) {
            C4022 c40222 = (C4022) obj;
            c40222.getClass();
            C4022.f15403.compareAndSet(c40222, 0, 1);
        }
        if (!m8259) {
            mo3911(m8231);
        }
        mo8238(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15415;
        Object c4050 = obj instanceof InterfaceC4024 ? new C4050((InterfaceC4024) obj) : obj;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, c4033, c4050) && atomicReferenceFieldUpdater.get(this) == c4033) {
        }
        m8233(c4033, obj);
        return obj;
    }

    /* renamed from: ﹳـ */
    public void mo3911(Throwable th) {
    }

    @Override // p324.InterfaceC4036
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final InterfaceC4041 mo8258(boolean z, boolean z2, ᴵˊ r4) {
        return m8255(z2, z ? new C4008(r4) : new C4009(2, r4));
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ﹶᐧ */
    public final InterfaceC2139 mo3421(InterfaceC2139 interfaceC2139) {
        return ʽ.ˏי(this, interfaceC2139);
    }
}
