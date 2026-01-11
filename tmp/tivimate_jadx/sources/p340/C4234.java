package p340;

import java.util.Arrays;
import kotlin.NoWhenBranchMatchedException;
import p010.AbstractC0844;
import p012.C0902;
import p013.C0907;
import p089.AbstractC1757;
import p089.AbstractC1768;
import p089.AbstractC1769;
import p089.C1759;
import p089.InterfaceC1763;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p152.AbstractC2444;
import p324.C4030;
import p324.C4046;
import p373.EnumC4532;
import ˉᵎ.ⁱˊ;

/* renamed from: ᵎˈ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4234 extends AbstractC1769 implements InterfaceC4254, InterfaceC4256, InterfaceC1763 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f15736;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f15737;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public long f15738;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f15739;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object[] f15740;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f15741;

    public C4234(int i) {
        this.f15736 = i;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:1|(7:(2:3|(10:5|6|7|(2:9|(1:(1:(7:13|14|15|16|17|(3:18|19|(10:28|(2:33|34)|36|(1:38)|15|16|17|18|19|(0)(1:21))(0))|25)(2:39|40))(5:41|42|17|(3:18|19|(0)(0))|25))(4:43|44|45|46))(1:57)|47|48|16|17|(3:18|19|(0)(0))|25))|47|48|16|17|(3:18|19|(0)(0))|25)|59|6|7|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0036, code lost:
    
        r8 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f A[Catch: all -> 0x0036, TRY_ENTER, TryCatch #0 {all -> 0x0036, blocks: (B:14:0x002f, B:18:0x0075, B:21:0x007f, B:30:0x0092, B:33:0x0099, B:34:0x009d, B:36:0x009e, B:42:0x0049), top: B:7:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0090 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0020  */
    /* JADX WARN: Type inference failed for: r4v1, types: [ʿᵔ.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v4, types: [ᵎˈ.ʽʽ] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r9v0, types: [ᵎˈ.ᵔᵢ] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v16 */
    /* JADX WARN: Type inference failed for: r9v17 */
    /* JADX WARN: Type inference failed for: r9v18 */
    /* JADX WARN: Type inference failed for: r9v2, types: [ʿᵔ.ʽ] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [ᵎˈ.ᴵᵔ] */
    /* JADX WARN: Type inference failed for: r9v8, types: [ᵎˈ.ᴵᵔ] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ac -> B:15:0x0032). Please report as a decompilation issue!!! */
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8625(p340.C4234 r8, p340.InterfaceC4256 r9, p126.InterfaceC2136 r10) {
        /*
            boolean r0 = r10 instanceof p340.C4251
            if (r0 == 0) goto L13
            r0 = r10
            ᵎˈ.ᴵˊ r0 = (p340.C4251) r0
            int r1 = r0.f15804
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f15804 = r1
            goto L18
        L13:
            ᵎˈ.ᴵˊ r0 = new ᵎˈ.ᴵˊ
            r0.<init>(r8, r10)
        L18:
            java.lang.Object r10 = r0.f15802
            int r1 = r0.f15804
            r2 = 3
            r3 = 2
            if (r1 == 0) goto L5c
            r8 = 1
            if (r1 == r8) goto L4d
            if (r1 == r3) goto L41
            if (r1 != r2) goto L39
            ᴵי.ᴵˑ r8 = r0.f15805
            ᵎˈ.ᴵᵔ r9 = r0.f15803
            ᵎˈ.ᵔᵢ r1 = r0.f15806
            ᵎˈ.ʽʽ r4 = r0.f15801
            p121.AbstractC2026.m5044(r10)     // Catch: java.lang.Throwable -> L36
        L32:
            r10 = r1
            r1 = r8
            r8 = r4
            goto L72
        L36:
            r8 = move-exception
            goto Lb2
        L39:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L41:
            ᴵי.ᴵˑ r8 = r0.f15805
            ᵎˈ.ᴵᵔ r9 = r0.f15803
            ᵎˈ.ᵔᵢ r1 = r0.f15806
            ᵎˈ.ʽʽ r4 = r0.f15801
            p121.AbstractC2026.m5044(r10)     // Catch: java.lang.Throwable -> L36
            goto L75
        L4d:
            ᵎˈ.ᴵᵔ r9 = r0.f15803
            ᵎˈ.ᵔᵢ r8 = r0.f15806
            ᵎˈ.ʽʽ r1 = r0.f15801
            p121.AbstractC2026.m5044(r10)     // Catch: java.lang.Throwable -> L59
            r10 = r8
            r8 = r1
            goto L68
        L59:
            r8 = move-exception
            r4 = r1
            goto Lb2
        L5c:
            p121.AbstractC2026.m5044(r10)
            ʿᵔ.ʽ r10 = r8.m4728()
            ᵎˈ.ᴵᵔ r10 = (p340.C4252) r10
            r7 = r10
            r10 = r9
            r9 = r7
        L68:
            ˈי.ᵔᵢ r1 = r0.f15166     // Catch: java.lang.Throwable -> Laf
            ᴵי.ʽﹳ r4 = p324.C3997.f15367     // Catch: java.lang.Throwable -> Laf
            ˈי.ﾞᴵ r1 = r1.mo3419(r4)     // Catch: java.lang.Throwable -> Laf
            ᴵי.ᴵˑ r1 = (p324.InterfaceC4036) r1     // Catch: java.lang.Throwable -> Laf
        L72:
            r4 = r8
            r8 = r1
            r1 = r10
        L75:
            java.lang.Object r10 = r4.m8636(r9)     // Catch: java.lang.Throwable -> L36
            ʻᴵ.ﹳٴ r5 = p340.AbstractC4240.f15759     // Catch: java.lang.Throwable -> L36
            ᵢˎ.ﹳٴ r6 = p373.EnumC4532.f16960
            if (r10 != r5) goto L90
            r0.f15801 = r4     // Catch: java.lang.Throwable -> L36
            r0.f15806 = r1     // Catch: java.lang.Throwable -> L36
            r0.f15803 = r9     // Catch: java.lang.Throwable -> L36
            r0.f15805 = r8     // Catch: java.lang.Throwable -> L36
            r0.f15804 = r3     // Catch: java.lang.Throwable -> L36
            java.lang.Object r10 = r4.m8634(r9, r0)     // Catch: java.lang.Throwable -> L36
            if (r10 != r6) goto L75
            goto Lae
        L90:
            if (r8 == 0) goto L9e
            boolean r5 = r8.mo8230()     // Catch: java.lang.Throwable -> L36
            if (r5 == 0) goto L99
            goto L9e
        L99:
            java.util.concurrent.CancellationException r8 = r8.mo8236()     // Catch: java.lang.Throwable -> L36
            throw r8     // Catch: java.lang.Throwable -> L36
        L9e:
            r0.f15801 = r4     // Catch: java.lang.Throwable -> L36
            r0.f15806 = r1     // Catch: java.lang.Throwable -> L36
            r0.f15803 = r9     // Catch: java.lang.Throwable -> L36
            r0.f15805 = r8     // Catch: java.lang.Throwable -> L36
            r0.f15804 = r2     // Catch: java.lang.Throwable -> L36
            java.lang.Object r10 = r1.mo3399(r10, r0)     // Catch: java.lang.Throwable -> L36
            if (r10 != r6) goto L32
        Lae:
            return
        Laf:
            r10 = move-exception
            r4 = r8
            r8 = r10
        Lb2:
            r4.m4730(r9)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p340.C4234.m8625(ᵎˈ.ʽʽ, ᵎˈ.ᵔᵢ, ˈי.ˈ):void");
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m8626() {
        if (this.f15736 != 0 || this.f15741 > 1) {
            Object[] objArr = this.f15740;
            while (this.f15741 > 0) {
                long m8633 = m8633();
                int i = this.f15737;
                int i2 = this.f15741;
                if (objArr[((int) ((m8633 + (i + i2)) - 1)) & (objArr.length - 1)] != AbstractC4240.f15759) {
                    return;
                }
                this.f15741 = i2 - 1;
                AbstractC4240.m8643(objArr, m8633() + this.f15737 + this.f15741, null);
            }
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m8627(Object obj) {
        AbstractC1757[] abstractC1757Arr;
        if (this.f7156 != 0) {
            int i = this.f15737;
            int i2 = this.f15736;
            if (i >= i2 && this.f15739 <= this.f15738) {
                int m3018 = AbstractC0844.m3018(1);
                if (m3018 == 0) {
                    return false;
                }
                if (m3018 != 1) {
                    if (m3018 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                }
            }
            m8637(obj);
            int i3 = this.f15737 + 1;
            this.f15737 = i3;
            if (i3 > i2) {
                AbstractC4240.m8643(this.f15740, m8633(), null);
                this.f15737--;
                long m8633 = m8633() + 1;
                if (this.f15738 < m8633) {
                    this.f15738 = m8633;
                }
                if (this.f15739 < m8633) {
                    if (this.f7156 != 0 && (abstractC1757Arr = this.f7155) != null) {
                        for (AbstractC1757 abstractC1757 : abstractC1757Arr) {
                            if (abstractC1757 != null) {
                                C4252 c4252 = (C4252) abstractC1757;
                                long j = c4252.f15809;
                                if (j >= 0 && j < m8633) {
                                    c4252.f15809 = m8633;
                                }
                            }
                        }
                    }
                    this.f15739 = m8633;
                }
            }
            long m86332 = m8633() + this.f15737;
            long j2 = this.f15738;
            if (((int) (m86332 - j2)) > 0) {
                m8631(1 + j2, this.f15739, m8633() + this.f15737, m8633() + this.f15737 + this.f15741);
            }
        }
        return true;
    }

    @Override // p089.InterfaceC1763
    /* renamed from: ʽ */
    public final InterfaceC4254 mo4719(InterfaceC2139 interfaceC2139, int i, int i2) {
        return ((i == 0 || i == -3) && i2 == 1) ? this : new C1759(this, interfaceC2139, i, i2, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final InterfaceC2136[] m8628(InterfaceC2136[] interfaceC2136Arr) {
        AbstractC1757[] abstractC1757Arr;
        C4252 c4252;
        C4030 c4030;
        int length = interfaceC2136Arr.length;
        if (this.f7156 != 0 && (abstractC1757Arr = this.f7155) != null) {
            int length2 = abstractC1757Arr.length;
            int i = 0;
            interfaceC2136Arr = interfaceC2136Arr;
            while (i < length2) {
                AbstractC1757 abstractC1757 = abstractC1757Arr[i];
                if (abstractC1757 != null && (c4030 = (c4252 = (C4252) abstractC1757).f15808) != null && m8635(c4252) >= 0) {
                    int length3 = interfaceC2136Arr.length;
                    interfaceC2136Arr = interfaceC2136Arr;
                    if (length >= length3) {
                        interfaceC2136Arr = Arrays.copyOf(interfaceC2136Arr, Math.max(2, interfaceC2136Arr.length * 2));
                    }
                    interfaceC2136Arr[length] = c4030;
                    c4252.f15808 = null;
                    length++;
                }
                i++;
                interfaceC2136Arr = interfaceC2136Arr;
            }
        }
        return interfaceC2136Arr;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Object[] m8629(Object[] objArr, int i, int i2) {
        if (i2 <= 0) {
            throw new IllegalStateException("Buffer size overflow");
        }
        Object[] objArr2 = new Object[i2];
        this.f15740 = objArr2;
        if (objArr != null) {
            long m8633 = m8633();
            for (int i3 = 0; i3 < i; i3++) {
                long j = i3 + m8633;
                AbstractC4240.m8643(objArr2, j, objArr[((int) j) & (objArr.length - 1)]);
            }
        }
        return objArr2;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final InterfaceC2136[] m8630(long j) {
        long j2;
        long j3;
        InterfaceC2136[] interfaceC2136Arr;
        InterfaceC2136[] interfaceC2136Arr2;
        long j4;
        AbstractC1757[] abstractC1757Arr;
        C0902 c0902 = AbstractC4240.f15759;
        InterfaceC2136[] interfaceC2136Arr3 = AbstractC1768.f7153;
        if (j <= this.f15739) {
            long m8633 = m8633();
            long j5 = this.f15737 + m8633;
            int i = this.f15736;
            if (i == 0 && this.f15741 > 0) {
                j5++;
            }
            if (this.f7156 != 0 && (abstractC1757Arr = this.f7155) != null) {
                for (AbstractC1757 abstractC1757 : abstractC1757Arr) {
                    if (abstractC1757 != null) {
                        long j6 = ((C4252) abstractC1757).f15809;
                        if (j6 >= 0 && j6 < j5) {
                            j5 = j6;
                        }
                    }
                }
            }
            if (j5 > this.f15739) {
                long m86332 = m8633() + this.f15737;
                int min = this.f7156 > 0 ? Math.min(this.f15741, i - ((int) (m86332 - j5))) : this.f15741;
                long j7 = this.f15741 + m86332;
                if (min > 0) {
                    InterfaceC2136[] interfaceC2136Arr4 = new InterfaceC2136[min];
                    j3 = 1;
                    Object[] objArr = this.f15740;
                    long j8 = m86332;
                    int i2 = 0;
                    while (true) {
                        if (m86332 >= j7) {
                            interfaceC2136Arr2 = interfaceC2136Arr4;
                            j2 = m8633;
                            j4 = j8;
                            break;
                        }
                        interfaceC2136Arr2 = interfaceC2136Arr4;
                        Object obj = objArr[(objArr.length - 1) & ((int) m86332)];
                        if (obj != c0902) {
                            C4236 c4236 = (C4236) obj;
                            int i3 = i2 + 1;
                            j2 = m8633;
                            interfaceC2136Arr2[i2] = c4236.f15745;
                            AbstractC4240.m8643(objArr, m86332, c0902);
                            long j9 = j8;
                            AbstractC4240.m8643(objArr, j9, c4236.f15743);
                            j4 = j9 + 1;
                            if (i3 >= min) {
                                break;
                            }
                            i2 = i3;
                            j8 = j4;
                        } else {
                            j2 = m8633;
                        }
                        m86332++;
                        interfaceC2136Arr4 = interfaceC2136Arr2;
                        m8633 = j2;
                    }
                    m86332 = j4;
                    interfaceC2136Arr = interfaceC2136Arr2;
                } else {
                    j2 = m8633;
                    j3 = 1;
                    interfaceC2136Arr = interfaceC2136Arr3;
                }
                int i4 = (int) (m86332 - j2);
                long j10 = this.f7156 == 0 ? m86332 : j5;
                long max = Math.max(this.f15738, m86332 - Math.min(0, i4));
                if (i == 0 && max < j7) {
                    if (AbstractC2444.m5562(this.f15740[((int) max) & (r2.length - 1)], c0902)) {
                        m86332 += j3;
                        max += j3;
                    }
                }
                m8631(max, j10, m86332, j7);
                m8626();
                return interfaceC2136Arr.length == 0 ? interfaceC2136Arr : m8628(interfaceC2136Arr);
            }
        }
        return interfaceC2136Arr3;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʿᵔ.ʽ, java.lang.Object, ᵎˈ.ᴵᵔ] */
    @Override // p089.AbstractC1769
    /* renamed from: ˑﹳ */
    public final AbstractC1757 mo4729() {
        ?? obj = new Object();
        obj.f15809 = -1L;
        return obj;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m8631(long j, long j2, long j3, long j4) {
        long min = Math.min(j2, j);
        for (long m8633 = m8633(); m8633 < min; m8633++) {
            AbstractC4240.m8643(this.f15740, m8633, null);
        }
        this.f15738 = j;
        this.f15739 = j2;
        this.f15737 = (int) (j3 - min);
        this.f15741 = (int) (j4 - j3);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Object m8632(Object obj, InterfaceC2136 interfaceC2136) {
        Throwable th;
        InterfaceC2136[] m8628;
        C4236 c4236;
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(interfaceC2136));
        c4030.m8206();
        InterfaceC2136[] interfaceC2136Arr = AbstractC1768.f7153;
        synchronized (this) {
            try {
                if (m8627(obj)) {
                    try {
                        c4030.mo3549(C0907.f3832);
                        m8628 = m8628(interfaceC2136Arr);
                        c4236 = null;
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                } else {
                    try {
                        C4236 c42362 = new C4236(this, m8633() + this.f15737 + this.f15741, obj, c4030);
                        m8637(c42362);
                        this.f15741++;
                        if (this.f15736 == 0) {
                            interfaceC2136Arr = m8628(interfaceC2136Arr);
                        }
                        m8628 = interfaceC2136Arr;
                        c4236 = c42362;
                    } catch (Throwable th3) {
                        th = th3;
                        th = th;
                        throw th;
                    }
                }
                if (c4236 != null) {
                    c4030.m8207(new C4046(2, c4236));
                }
                for (InterfaceC2136 interfaceC21362 : m8628) {
                    if (interfaceC21362 != null) {
                        interfaceC21362.mo3549(C0907.f3832);
                    }
                }
                Object m8209 = c4030.m8209();
                return m8209 == EnumC4532.f16960 ? m8209 : C0907.f3832;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final long m8633() {
        return Math.min(this.f15739, this.f15738);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object m8634(C4252 c4252, C4251 c4251) {
        C4030 c4030 = new C4030(1, ⁱˊ.ˈٴ(c4251));
        c4030.m8206();
        synchronized (this) {
            try {
                if (m8635(c4252) < 0) {
                    c4252.f15808 = c4030;
                } else {
                    c4030.mo3549(C0907.f3832);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object m8209 = c4030.m8209();
        return m8209 == EnumC4532.f16960 ? m8209 : C0907.f3832;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final long m8635(C4252 c4252) {
        long j = c4252.f15809;
        if (j < m8633() + this.f15737) {
            return j;
        }
        if (this.f15736 <= 0 && j <= m8633() && this.f15741 != 0) {
            return j;
        }
        return -1L;
    }

    @Override // p340.InterfaceC4254
    /* renamed from: ⁱˊ */
    public final Object mo3411(InterfaceC4256 interfaceC4256, InterfaceC2136 interfaceC2136) {
        m8625(this, interfaceC4256, interfaceC2136);
        return EnumC4532.f16960;
    }

    @Override // p340.InterfaceC4256
    /* renamed from: ﹳٴ */
    public final Object mo3399(Object obj, InterfaceC2136 interfaceC2136) {
        int i;
        boolean z;
        Object m8632;
        InterfaceC2136[] interfaceC2136Arr = AbstractC1768.f7153;
        synchronized (this) {
            if (m8627(obj)) {
                interfaceC2136Arr = m8628(interfaceC2136Arr);
                z = true;
            } else {
                z = false;
            }
        }
        for (InterfaceC2136 interfaceC21362 : interfaceC2136Arr) {
            if (interfaceC21362 != null) {
                interfaceC21362.mo3549(C0907.f3832);
            }
        }
        return (!z && (m8632 = m8632(obj, interfaceC2136)) == EnumC4532.f16960) ? m8632 : C0907.f3832;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final Object m8636(C4252 c4252) {
        Object obj;
        InterfaceC2136[] interfaceC2136Arr = AbstractC1768.f7153;
        synchronized (this) {
            try {
                long m8635 = m8635(c4252);
                if (m8635 < 0) {
                    obj = AbstractC4240.f15759;
                } else {
                    long j = c4252.f15809;
                    Object obj2 = this.f15740[((int) m8635) & (r0.length - 1)];
                    if (obj2 instanceof C4236) {
                        obj2 = ((C4236) obj2).f15743;
                    }
                    c4252.f15809 = m8635 + 1;
                    Object obj3 = obj2;
                    interfaceC2136Arr = m8630(j);
                    obj = obj3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        for (InterfaceC2136 interfaceC2136 : interfaceC2136Arr) {
            if (interfaceC2136 != null) {
                interfaceC2136.mo3549(C0907.f3832);
            }
        }
        return obj;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m8637(Object obj) {
        int i = this.f15737 + this.f15741;
        Object[] objArr = this.f15740;
        if (objArr == null) {
            objArr = m8629(null, 0, 2);
        } else if (i >= objArr.length) {
            objArr = m8629(objArr, i, objArr.length * 2);
        }
        AbstractC4240.m8643(objArr, m8633() + i, obj);
    }

    @Override // p089.AbstractC1769
    /* renamed from: ﾞᴵ */
    public final AbstractC1757[] mo4731() {
        return new C4252[2];
    }
}
