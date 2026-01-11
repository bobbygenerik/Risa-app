package p324;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p013.AbstractC0915;
import p013.C0907;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p153.AbstractC2481;
import p153.AbstractC2483;
import p153.C2485;
import p316.InterfaceC3903;
import p329.InterfaceC4102;
import p329.InterfaceC4106;
import p373.EnumC4532;

/* renamed from: ᴵי.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4030 extends AbstractC4037 implements InterfaceC4002, InterfaceC3903, InterfaceC3996 {
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final InterfaceC2136 f15413;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final InterfaceC2139 f15414;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f15411 = AtomicIntegerFieldUpdater.newUpdater(C4030.class, "_decisionAndIndex$volatile");

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15412 = AtomicReferenceFieldUpdater.newUpdater(C4030.class, Object.class, "_state$volatile");

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f15410 = AtomicReferenceFieldUpdater.newUpdater(C4030.class, Object.class, "_parentHandle$volatile");

    public C4030(int i, InterfaceC2136 interfaceC2136) {
        super(i);
        this.f15413 = interfaceC2136;
        this.f15414 = interfaceC2136.mo3551();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = C4049.f15438;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static Object m8204(InterfaceC4015 interfaceC4015, Object obj, int i, InterfaceC4102 interfaceC4102) {
        if (obj instanceof C4022) {
            return obj;
        }
        if (i != 1 && i != 2) {
            return obj;
        }
        if (interfaceC4102 != null || (interfaceC4015 instanceof InterfaceC3992)) {
            return new C4052(obj, interfaceC4015 instanceof InterfaceC3992 ? (InterfaceC3992) interfaceC4015 : null, interfaceC4102, (Throwable) null, 16);
        }
        return obj;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static void m8205(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(mo8184());
        sb.append('(');
        sb.append(AbstractC3999.m8162(this.f15413));
        sb.append("){");
        Object obj = f15412.get(this);
        sb.append(obj instanceof InterfaceC4015 ? "Active" : obj instanceof C4055 ? "Cancelled" : "Completed");
        sb.append("}@");
        sb.append(AbstractC3999.m8173(this));
        return sb.toString();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m8206() {
        InterfaceC4041 m8218 = m8218();
        if (m8218 == null || (f15412.get(this) instanceof InterfaceC4015)) {
            return;
        }
        m8218.mo4747();
        f15410.set(this, C3989.f15358);
    }

    /* JADX WARN: Code restructure failed: missing block: B:67:0x00a0, code lost:
    
        m8205(r8, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00a3, code lost:
    
        throw null;
     */
    /* renamed from: ʼʼ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8207(p324.InterfaceC4015 r8) {
        /*
            r7 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = p324.C4030.f15412
            java.lang.Object r2 = r0.get(r7)
            boolean r1 = r2 instanceof p324.C4049
            if (r1 == 0) goto L19
        La:
            boolean r1 = r0.compareAndSet(r7, r2, r8)
            if (r1 == 0) goto L12
            goto L97
        L12:
            java.lang.Object r1 = r0.get(r7)
            if (r1 == r2) goto La
            goto L0
        L19:
            boolean r1 = r2 instanceof p324.InterfaceC3992
            r3 = 0
            if (r1 != 0) goto La0
            boolean r1 = r2 instanceof p153.AbstractC2483
            if (r1 != 0) goto La0
            boolean r1 = r2 instanceof p324.C4022
            if (r1 == 0) goto L4d
            r0 = r2
            ᴵי.יـ r0 = (p324.C4022) r0
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r1 = p324.C4022.f15403
            r4 = 0
            r5 = 1
            boolean r1 = r1.compareAndSet(r0, r4, r5)
            if (r1 == 0) goto L49
            boolean r1 = r2 instanceof p324.C4055
            if (r1 == 0) goto L97
            java.lang.Throwable r0 = r0.f15404
            boolean r1 = r8 instanceof p324.InterfaceC3992
            if (r1 == 0) goto L43
            ᴵי.ʼˎ r8 = (p324.InterfaceC3992) r8
            r7.m8219(r8, r0)
            return
        L43:
            ˊʽ.ﹳᐧ r8 = (p153.AbstractC2483) r8
            r7.m8208(r8, r0)
            return
        L49:
            m8205(r8, r2)
            throw r3
        L4d:
            boolean r1 = r2 instanceof p324.C4052
            if (r1 == 0) goto L80
            r1 = r2
            ᴵי.ﹳᐧ r1 = (p324.C4052) r1
            ᴵי.ʼˎ r4 = r1.f15444
            if (r4 != 0) goto L7c
            boolean r4 = r8 instanceof p153.AbstractC2483
            if (r4 == 0) goto L5d
            return
        L5d:
            r4 = r8
            ᴵי.ʼˎ r4 = (p324.InterfaceC3992) r4
            java.lang.Throwable r5 = r1.f15443
            if (r5 == 0) goto L68
            r7.m8219(r4, r5)
            return
        L68:
            r5 = 29
            ᴵי.ﹳᐧ r1 = p324.C4052.m8268(r1, r4, r3, r5)
        L6e:
            boolean r3 = r0.compareAndSet(r7, r2, r1)
            if (r3 == 0) goto L75
            goto L97
        L75:
            java.lang.Object r3 = r0.get(r7)
            if (r3 == r2) goto L6e
            goto L0
        L7c:
            m8205(r8, r2)
            throw r3
        L80:
            boolean r1 = r8 instanceof p153.AbstractC2483
            if (r1 == 0) goto L85
            return
        L85:
            r3 = r8
            ᴵי.ʼˎ r3 = (p324.InterfaceC3992) r3
            ᴵי.ﹳᐧ r1 = new ᴵי.ﹳᐧ
            r5 = 0
            r6 = 28
            r4 = 0
            r1.<init>(r2, r3, r4, r5, r6)
        L91:
            boolean r3 = r0.compareAndSet(r7, r2, r1)
            if (r3 == 0) goto L98
        L97:
            return
        L98:
            java.lang.Object r3 = r0.get(r7)
            if (r3 == r2) goto L91
            goto L0
        La0:
            m8205(r8, r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p324.C4030.m8207(ᴵי.ˊᵔ):void");
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m8208(AbstractC2483 abstractC2483, Throwable th) {
        InterfaceC2139 interfaceC2139 = this.f15414;
        int i = f15411.get(this) & 536870911;
        if (i == 536870911) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken");
        }
        try {
            abstractC2483.mo3905(i, interfaceC2139);
        } catch (Throwable th2) {
            AbstractC3999.m8167(new RuntimeException("Exception in invokeOnCancellation handler for " + this, th2), interfaceC2139);
        }
    }

    @Override // p324.AbstractC4037
    /* renamed from: ʽ */
    public final InterfaceC2136 mo5634() {
        return this.f15413;
    }

    /* renamed from: ʽʽ */
    public String mo8184() {
        return "CancellableContinuation";
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final Object m8209() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        InterfaceC4036 interfaceC4036;
        boolean m8210 = m8210();
        do {
            atomicIntegerFieldUpdater = f15411;
            i = atomicIntegerFieldUpdater.get(this);
            int i2 = i >> 29;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new IllegalStateException("Already suspended");
                }
                if (m8210) {
                    m8212();
                }
                Object obj = f15412.get(this);
                if (obj instanceof C4022) {
                    throw ((C4022) obj).f15404;
                }
                int i3 = this.f15424;
                if ((i3 != 1 && i3 != 2) || (interfaceC4036 = (InterfaceC4036) this.f15414.mo3419(C3997.f15367)) == null || interfaceC4036.mo8230()) {
                    return mo8221(obj);
                }
                CancellationException mo8236 = interfaceC4036.mo8236();
                mo8224(mo8236);
                throw mo8236;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, 536870912 + (536870911 & i)));
        if (((InterfaceC4041) f15410.get(this)) == null) {
            m8218();
        }
        if (m8210) {
            m8212();
        }
        return EnumC4532.f16960;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean m8210() {
        if (this.f15424 != 2) {
            return false;
        }
        C2485 c2485 = (C2485) this.f15413;
        c2485.getClass();
        return C2485.f9474.get(c2485) != null;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m8211(InterfaceC4106 interfaceC4106) {
        m8207(new C4046(1, interfaceC4106));
    }

    @Override // p324.AbstractC4037
    /* renamed from: ˆʾ */
    public final Object mo5635() {
        return f15412.get(this);
    }

    @Override // p316.InterfaceC3903
    /* renamed from: ˈ */
    public final InterfaceC3903 mo4725() {
        InterfaceC2136 interfaceC2136 = this.f15413;
        if (interfaceC2136 instanceof InterfaceC3903) {
            return (InterfaceC3903) interfaceC2136;
        }
        return null;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m8212() {
        InterfaceC2136 interfaceC2136 = this.f15413;
        Throwable th = null;
        C2485 c2485 = interfaceC2136 instanceof C2485 ? (C2485) interfaceC2136 : null;
        if (c2485 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C2485.f9474;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(c2485);
                C0902 c0902 = AbstractC2481.f9463;
                if (obj != c0902) {
                    if (!(obj instanceof Throwable)) {
                        throw new IllegalStateException(("Inconsistent state " + obj).toString());
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(c2485, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(c2485) != obj) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                    }
                    th = (Throwable) obj;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(c2485, c0902, this)) {
                    if (atomicReferenceFieldUpdater.get(c2485) != c0902) {
                        break;
                    }
                }
            }
            if (th == null) {
                return;
            }
            m8225();
            m8222(th);
        }
    }

    @Override // p324.InterfaceC4002
    /* renamed from: ˉʿ */
    public final void mo8186(Object obj, InterfaceC4102 interfaceC4102) {
        m8220(obj, this.f15424, interfaceC4102);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8213(InterfaceC4102 interfaceC4102, Throwable th, Object obj) {
        InterfaceC2139 interfaceC2139 = this.f15414;
        try {
            interfaceC4102.mo4346(th, obj, interfaceC2139);
        } catch (Throwable th2) {
            AbstractC3999.m8167(new RuntimeException("Exception in resume onCancellation handler for " + this, th2), interfaceC2139);
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C0902 m8214(Object obj, InterfaceC4102 interfaceC4102) {
        C0902 c0902 = AbstractC3999.f15376;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15412;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof InterfaceC4015)) {
                return null;
            }
            Object m8204 = m8204((InterfaceC4015) obj2, obj, this.f15424, interfaceC4102);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, m8204)) {
                if (atomicReferenceFieldUpdater.get(this) != obj2) {
                    break;
                }
            }
            if (!m8210()) {
                m8225();
            }
            return c0902;
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m8215(AbstractC4017 abstractC4017) {
        InterfaceC2136 interfaceC2136 = this.f15413;
        C2485 c2485 = interfaceC2136 instanceof C2485 ? (C2485) interfaceC2136 : null;
        m8220(C0907.f3832, (c2485 != null ? c2485.f9475 : null) == abstractC4017 ? 4 : this.f15424, null);
    }

    /* renamed from: ˏי */
    public Throwable mo8185(C4031 c4031) {
        return c4031.mo8236();
    }

    @Override // p324.AbstractC4037
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Throwable mo8216(Object obj) {
        Throwable mo8216 = super.mo8216(obj);
        if (mo8216 != null) {
            return mo8216;
        }
        return null;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m8217(int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f15411;
            i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = i2 >> 29;
            if (i3 != 0) {
                if (i3 != 1) {
                    throw new IllegalStateException("Already resumed");
                }
                boolean z = i == 4;
                InterfaceC2136 interfaceC2136 = this.f15413;
                if (!z && (interfaceC2136 instanceof C2485)) {
                    boolean z2 = i == 1 || i == 2;
                    int i4 = this.f15424;
                    if (z2 == (i4 == 1 || i4 == 2)) {
                        C2485 c2485 = (C2485) interfaceC2136;
                        AbstractC4017 abstractC4017 = c2485.f9475;
                        InterfaceC2139 mo3551 = c2485.f9478.mo3551();
                        if (AbstractC2481.m5620(abstractC4017, mo3551)) {
                            AbstractC2481.m5618(abstractC4017, mo3551, this);
                            return;
                        }
                        AbstractC4020 m8269 = AbstractC4053.m8269();
                        if (m8269.f15400 >= 4294967296L) {
                            m8269.m8203(this);
                            return;
                        }
                        m8269.m8202(true);
                        try {
                            AbstractC3999.m8181(this, interfaceC2136, true);
                            do {
                            } while (m8269.m8200());
                        } finally {
                            try {
                                return;
                            } finally {
                            }
                        }
                        return;
                    }
                }
                AbstractC3999.m8181(this, interfaceC2136, z);
                return;
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, 1073741824 + (536870911 & i2)));
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final InterfaceC4041 m8218() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        InterfaceC4036 interfaceC4036 = (InterfaceC4036) this.f15414.mo3419(C3997.f15367);
        if (interfaceC4036 == null) {
            return null;
        }
        InterfaceC4041 m8175 = AbstractC3999.m8175(interfaceC4036, true, new C4009(0, this));
        do {
            atomicReferenceFieldUpdater = f15410;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, m8175)) {
                break;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        return m8175;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m8219(InterfaceC3992 interfaceC3992, Throwable th) {
        try {
            interfaceC3992.mo8152(th);
        } catch (Throwable th2) {
            AbstractC3999.m8167(new RuntimeException("Exception in invokeOnCancellation handler for " + this, th2), this.f15414);
        }
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m8220(Object obj, int i, InterfaceC4102 interfaceC4102) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15412;
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof InterfaceC4015) {
                Object m8204 = m8204((InterfaceC4015) obj2, obj, i, interfaceC4102);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj2, m8204)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj2) {
                        break;
                    }
                }
                if (!m8210()) {
                    m8225();
                }
                m8217(i);
                return;
            }
            if (obj2 instanceof C4055) {
                C4055 c4055 = (C4055) obj2;
                if (C4055.f15447.compareAndSet(c4055, 0, 1)) {
                    if (interfaceC4102 != null) {
                        m8213(interfaceC4102, c4055.f15404, obj);
                        return;
                    }
                    return;
                }
            }
            throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
        }
    }

    @Override // p324.AbstractC4037
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object mo8221(Object obj) {
        return obj instanceof C4052 ? ((C4052) obj).f15445 : obj;
    }

    @Override // p324.InterfaceC4002
    /* renamed from: ᵔʾ */
    public final void mo8187(Object obj) {
        m8217(this.f15424);
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ᵔᵢ */
    public final void mo3549(Object obj) {
        Throwable m3188 = AbstractC0915.m3188(obj);
        if (m3188 != null) {
            obj = new C4022(m3188, false);
        }
        m8220(obj, this.f15424, null);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m8222(Throwable th) {
        Throwable th2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15412;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof InterfaceC4015)) {
                return false;
            }
            boolean z = (obj instanceof InterfaceC3992) || (obj instanceof AbstractC2483);
            if (th == null) {
                th2 = new CancellationException("Continuation " + this + " was cancelled normally");
            } else {
                th2 = th;
            }
            C4022 c4022 = new C4022(th2, z);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c4022)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    break;
                }
            }
            InterfaceC4015 interfaceC4015 = (InterfaceC4015) obj;
            if (interfaceC4015 instanceof InterfaceC3992) {
                m8219((InterfaceC3992) obj, th);
            } else if (interfaceC4015 instanceof AbstractC2483) {
                m8208((AbstractC2483) obj, th);
            }
            if (!m8210()) {
                m8225();
            }
            m8217(this.f15424);
            return true;
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean m8223() {
        return f15412.get(this) instanceof InterfaceC4015;
    }

    @Override // p324.AbstractC4037
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo8224(CancellationException cancellationException) {
        CancellationException cancellationException2;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15412;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj instanceof InterfaceC4015) {
                throw new IllegalStateException("Not completed");
            }
            if (obj instanceof C4022) {
                return;
            }
            if (!(obj instanceof C4052)) {
                cancellationException2 = cancellationException;
                C4052 c4052 = new C4052(obj, (InterfaceC3992) null, (InterfaceC4102) null, cancellationException2, 14);
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, c4052)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                return;
            }
            C4052 c40522 = (C4052) obj;
            if (c40522.f15443 != null) {
                throw new IllegalStateException("Must be called at most once");
            }
            C4052 m8268 = C4052.m8268(c40522, null, cancellationException, 15);
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, m8268)) {
                if (atomicReferenceFieldUpdater.get(this) != obj) {
                    cancellationException2 = cancellationException;
                }
            }
            InterfaceC3992 interfaceC3992 = c40522.f15444;
            if (interfaceC3992 != null) {
                m8219(interfaceC3992, cancellationException);
            }
            InterfaceC4102 interfaceC4102 = c40522.f15441;
            if (interfaceC4102 != null) {
                m8213(interfaceC4102, cancellationException, c40522.f15445);
                return;
            }
            return;
            cancellationException = cancellationException2;
        }
    }

    @Override // p324.InterfaceC3996
    /* renamed from: ﹳٴ */
    public final void mo3896(AbstractC2483 abstractC2483, int i) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i2;
        do {
            atomicIntegerFieldUpdater = f15411;
            i2 = atomicIntegerFieldUpdater.get(this);
            if ((i2 & 536870911) != 536870911) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once");
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i2, ((i2 >> 29) << 29) + i));
        m8207(abstractC2483);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m8225() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f15410;
        InterfaceC4041 interfaceC4041 = (InterfaceC4041) atomicReferenceFieldUpdater.get(this);
        if (interfaceC4041 == null) {
            return;
        }
        interfaceC4041.mo4747();
        atomicReferenceFieldUpdater.set(this, C3989.f15358);
    }

    @Override // p324.InterfaceC4002
    /* renamed from: ﾞʻ */
    public final C0902 mo8188(Object obj, InterfaceC4102 interfaceC4102) {
        return m8214(obj, interfaceC4102);
    }

    @Override // p126.InterfaceC2136
    /* renamed from: ﾞᴵ */
    public final InterfaceC2139 mo3551() {
        return this.f15414;
    }
}
