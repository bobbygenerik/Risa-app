package p274;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.media3.exoplayer.source.BehindLiveWindowException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.TimeUnit;
import p291.AbstractC3615;
import p291.C3624;
import p292.C3629;
import p292.C3636;
import p292.C3644;
import p292.InterfaceC3631;
import p292.InterfaceC3635;
import p292.InterfaceC3643;
import p296.AbstractC3659;
import p305.AbstractC3731;
import p372.C4517;
import p394.AbstractC4712;
import p447.C5294;
import p447.C5322;
import p447.C5339;
import p447.C5344;
import p452.C5365;
import ᐧﹳ.ʽ;

/* renamed from: ـᵢ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3488 implements InterfaceC3631 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f13684;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f13685;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f13686;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f13687;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f13688;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f13689;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f13690;

    public C3488(long j, AbstractC3615 abstractC3615, C3624 c3624, C4517 c4517, long j2, InterfaceC3486 interfaceC3486) {
        this.f13689 = 0;
        this.f13688 = j;
        this.f13686 = abstractC3615;
        this.f13690 = c3624;
        this.f13684 = j2;
        this.f13685 = c4517;
        this.f13687 = interfaceC3486;
    }

    public C3488(InterfaceC3635 interfaceC3635, C5365 c5365) {
        this.f13689 = 1;
        this.f13685 = interfaceC3635;
        this.f13686 = c5365;
        this.f13688 = TimeUnit.MILLISECONDS.toNanos(250L);
        this.f13684 = Long.MIN_VALUE;
        this.f13690 = new CopyOnWriteArrayList();
        ʽ r3 = c5365.f20423;
        this.f13687 = new LinkedBlockingDeque();
    }

    public C3488(C5322 c5322, String str, String str2, String str3, long j, long j2, Bundle bundle) {
        C5294 c5294;
        this.f13689 = 2;
        AbstractC3659.m7680(str2);
        AbstractC3659.m7680(str3);
        this.f13685 = str2;
        this.f13686 = str3;
        this.f13690 = true == TextUtils.isEmpty(str) ? null : str;
        this.f13688 = j;
        this.f13684 = j2;
        if (j2 != 0 && j2 > j) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(C5344.m10722(str2), "Event created with reverse previous/current timestamps. appId");
        }
        if (bundle == null || bundle.isEmpty()) {
            c5294 = new C5294(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    C5344 c53442 = c5322.f20193;
                    C5322.m10556(c53442);
                    c53442.f20343.m10217("Param name can't be null");
                    it.remove();
                } else {
                    C5339 c5339 = c5322.f20208;
                    C5322.m10560(c5339);
                    Object m10686 = c5339.m10686(bundle2.get(next), next);
                    if (m10686 == null) {
                        C5344 c53443 = c5322.f20193;
                        C5322.m10556(c53443);
                        c53443.f20348.m10216(c5322.f20199.m10472(next), "Param value can't be null");
                        it.remove();
                    } else {
                        C5339 c53392 = c5322.f20208;
                        C5322.m10560(c53392);
                        c53392.m10707(bundle2, next, m10686);
                    }
                }
            }
            c5294 = new C5294(bundle2);
        }
        this.f13687 = c5294;
    }

    public C3488(C5322 c5322, String str, String str2, String str3, long j, long j2, C5294 c5294) {
        this.f13689 = 2;
        AbstractC3659.m7680(str2);
        AbstractC3659.m7680(str3);
        AbstractC3659.m7687(c5294);
        this.f13685 = str2;
        this.f13686 = str3;
        this.f13690 = true == TextUtils.isEmpty(str) ? null : str;
        this.f13688 = j;
        this.f13684 = j2;
        if (j2 != 0 && j2 > j) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10214(C5344.m10722(str2), C5344.m10722(str3), "Event created with reverse previous/current timestamps. appId, name");
        }
        this.f13687 = c5294;
    }

    public String toString() {
        switch (this.f13689) {
            case 2:
                String c5294 = ((C5294) this.f13687).toString();
                String str = (String) this.f13685;
                int length = String.valueOf(str).length();
                String str2 = (String) this.f13686;
                StringBuilder sb = new StringBuilder(length + 22 + String.valueOf(str2).length() + 10 + c5294.length() + 1);
                sb.append("Event{appId='");
                sb.append(str);
                sb.append("', name='");
                sb.append(str2);
                sb.append("', params=");
                sb.append(c5294);
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long m7414(long j) {
        InterfaceC3486 interfaceC3486 = (InterfaceC3486) this.f13687;
        AbstractC3731.m7868(interfaceC3486);
        return interfaceC3486.mo4574(j - this.f13684);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m7415() {
        CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) this.f13690;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            InterfaceC3643 interfaceC3643 = (InterfaceC3643) it.next();
            interfaceC3643.cancel();
            InterfaceC3643 mo7619 = interfaceC3643.mo7619();
            if (mo7619 != null) {
                ((InterfaceC3635) this.f13685).mo7625().addLast(mo7619);
            }
        }
        copyOnWriteArrayList.clear();
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public boolean m7416(long j, long j2) {
        InterfaceC3486 interfaceC3486 = (InterfaceC3486) this.f13687;
        AbstractC3731.m7868(interfaceC3486);
        return interfaceC3486.mo4587() || j2 == -9223372036854775807L || m7421(j) <= j2;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public C3488 m7417(long j, AbstractC3615 abstractC3615) {
        long mo4598;
        long mo45982;
        InterfaceC3486 mo7577 = ((AbstractC3615) this.f13686).mo7577();
        InterfaceC3486 mo75772 = abstractC3615.mo7577();
        if (mo7577 == null) {
            return new C3488(j, abstractC3615, (C3624) this.f13690, (C4517) this.f13685, this.f13684, mo7577);
        }
        if (!mo7577.mo4587()) {
            return new C3488(j, abstractC3615, (C3624) this.f13690, (C4517) this.f13685, this.f13684, mo75772);
        }
        long mo4591 = mo7577.mo4591(j);
        if (mo4591 == 0) {
            return new C3488(j, abstractC3615, (C3624) this.f13690, (C4517) this.f13685, this.f13684, mo75772);
        }
        AbstractC3731.m7868(mo75772);
        long mo4573 = mo7577.mo4573();
        long mo4574 = mo7577.mo4574(mo4573);
        long j2 = mo4591 + mo4573;
        long j3 = j2 - 1;
        long mo4594 = mo7577.mo4594(j3, j) + mo7577.mo4574(j3);
        long mo45732 = mo75772.mo4573();
        long mo45742 = mo75772.mo4574(mo45732);
        long j4 = this.f13684;
        if (mo4594 == mo45742) {
            mo4598 = j2 - mo45732;
        } else {
            if (mo4594 < mo45742) {
                throw new BehindLiveWindowException();
            }
            if (mo45742 < mo4574) {
                mo45982 = j4 - (mo75772.mo4598(mo4574, j) - mo4573);
                return new C3488(j, abstractC3615, (C3624) this.f13690, (C4517) this.f13685, mo45982, mo75772);
            }
            mo4598 = mo7577.mo4598(mo45742, j) - mo45732;
        }
        mo45982 = mo4598 + j4;
        return new C3488(j, abstractC3615, (C3624) this.f13690, (C4517) this.f13685, mo45982, mo75772);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long m7418(long j) {
        InterfaceC3486 interfaceC3486 = (InterfaceC3486) this.f13687;
        AbstractC3731.m7868(interfaceC3486);
        return interfaceC3486.mo4583(this.f13688, j) + this.f13684;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C3629 m7419() {
        InterfaceC3643 c3636;
        InterfaceC3635 interfaceC3635 = (InterfaceC3635) this.f13685;
        if (interfaceC3635.mo7622(null)) {
            try {
                c3636 = interfaceC3635.mo7621();
            } catch (Throwable th) {
                c3636 = new C3636(th);
            }
            if (c3636.mo7620()) {
                return new C3629(c3636, (Throwable) null, 6);
            }
            if (c3636 instanceof C3636) {
                return ((C3636) c3636).f14227;
            }
            ((CopyOnWriteArrayList) this.f13690).add(c3636);
            ((C5365) this.f13686).m10761().m10765(new C3644(AbstractC4712.f17803 + " connect " + interfaceC3635.mo7623().f11337.m6469(), c3636, this), 0L);
        }
        return null;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long m7420() {
        InterfaceC3486 interfaceC3486 = (InterfaceC3486) this.f13687;
        AbstractC3731.m7868(interfaceC3486);
        return interfaceC3486.mo4591(this.f13688);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long m7421(long j) {
        long m7414 = m7414(j);
        InterfaceC3486 interfaceC3486 = (InterfaceC3486) this.f13687;
        AbstractC3731.m7868(interfaceC3486);
        return interfaceC3486.mo4594(j - this.f13684, this.f13688) + m7414;
    }

    @Override // p292.InterfaceC3631
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC3635 mo7422() {
        return (InterfaceC3635) this.f13685;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004c A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x000a, B:5:0x0010, B:11:0x001e, B:13:0x0024, B:20:0x004c, B:64:0x0056, B:67:0x0063, B:25:0x006c, B:27:0x0074, B:31:0x007d, B:33:0x0086, B:34:0x008a, B:36:0x008e, B:41:0x0095, B:44:0x009f, B:46:0x00a3, B:49:0x00a9, B:50:0x00ad, B:52:0x00b1, B:53:0x00b2, B:56:0x00b6, B:69:0x0041, B:71:0x00bf, B:72:0x00c6), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007d A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x000a, B:5:0x0010, B:11:0x001e, B:13:0x0024, B:20:0x004c, B:64:0x0056, B:67:0x0063, B:25:0x006c, B:27:0x0074, B:31:0x007d, B:33:0x0086, B:34:0x008a, B:36:0x008e, B:41:0x0095, B:44:0x009f, B:46:0x00a3, B:49:0x00a9, B:50:0x00ad, B:52:0x00b1, B:53:0x00b2, B:56:0x00b6, B:69:0x0041, B:71:0x00bf, B:72:0x00c6), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a3 A[Catch: all -> 0x001b, TryCatch #0 {all -> 0x001b, blocks: (B:3:0x000a, B:5:0x0010, B:11:0x001e, B:13:0x0024, B:20:0x004c, B:64:0x0056, B:67:0x0063, B:25:0x006c, B:27:0x0074, B:31:0x007d, B:33:0x0086, B:34:0x008a, B:36:0x008e, B:41:0x0095, B:44:0x009f, B:46:0x00a3, B:49:0x00a9, B:50:0x00ad, B:52:0x00b1, B:53:0x00b2, B:56:0x00b6, B:69:0x0041, B:71:0x00bf, B:72:0x00c6), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x000a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x006b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x006c A[SYNTHETIC] */
    @Override // p292.InterfaceC3631
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p292.C3648 mo7423() {
        /*
            r10 = this;
            java.lang.Object r0 = r10.f13685
            ٴᵎ.ʾᵎ r0 = (p292.InterfaceC3635) r0
            java.lang.Object r1 = r10.f13690
            java.util.concurrent.CopyOnWriteArrayList r1 = (java.util.concurrent.CopyOnWriteArrayList) r1
            r2 = 0
            r3 = r2
        La:
            boolean r4 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L1e
            boolean r4 = r0.mo7622(r2)     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto L17
            goto L1e
        L17:
            r10.m7415()
            throw r3
        L1b:
            r0 = move-exception
            goto Lc7
        L1e:
            boolean r4 = r0.mo7624()     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto Lbf
            java.lang.Object r4 = r10.f13686     // Catch: java.lang.Throwable -> L1b
            ﾞʿ.ʽ r4 = (p452.C5365) r4     // Catch: java.lang.Throwable -> L1b
            ᐧﹳ.ʽ r4 = r4.f20423     // Catch: java.lang.Throwable -> L1b
            long r4 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L1b
            long r6 = r10.f13684     // Catch: java.lang.Throwable -> L1b
            long r6 = r6 - r4
            boolean r8 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1b
            if (r8 != 0) goto L41
            r8 = 0
            int r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r8 > 0) goto L3e
            goto L41
        L3e:
            r7 = r6
            r6 = r2
            goto L4a
        L41:
            ٴᵎ.ʻٴ r6 = r10.m7419()     // Catch: java.lang.Throwable -> L1b
            long r7 = r10.f13688     // Catch: java.lang.Throwable -> L1b
            long r4 = r4 + r7
            r10.f13684 = r4     // Catch: java.lang.Throwable -> L1b
        L4a:
            if (r6 != 0) goto L6c
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.Throwable -> L1b
            boolean r5 = r1.isEmpty()     // Catch: java.lang.Throwable -> L1b
            if (r5 == 0) goto L56
        L54:
            r6 = r2
            goto L69
        L56:
            java.lang.Object r5 = r10.f13687     // Catch: java.lang.Throwable -> L1b
            java.util.concurrent.LinkedBlockingDeque r5 = (java.util.concurrent.LinkedBlockingDeque) r5     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r4 = r5.poll(r7, r4)     // Catch: java.lang.Throwable -> L1b
            ٴᵎ.ʻٴ r4 = (p292.C3629) r4     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L63
            goto L54
        L63:
            ٴᵎ.ـˆ r5 = r4.f14198     // Catch: java.lang.Throwable -> L1b
            r1.remove(r5)     // Catch: java.lang.Throwable -> L1b
            r6 = r4
        L69:
            if (r6 != 0) goto L6c
            goto La
        L6c:
            ٴᵎ.ـˆ r4 = r6.f14198     // Catch: java.lang.Throwable -> L1b
            ٴᵎ.ـˆ r5 = r6.f14197     // Catch: java.lang.Throwable -> L1b
            r7 = 0
            r8 = 1
            if (r5 != 0) goto L7a
            java.lang.Throwable r5 = r6.f14196     // Catch: java.lang.Throwable -> L1b
            if (r5 != 0) goto L7a
            r5 = r8
            goto L7b
        L7a:
            r5 = r7
        L7b:
            if (r5 == 0) goto L9f
            r10.m7415()     // Catch: java.lang.Throwable -> L1b
            boolean r5 = r4.mo7620()     // Catch: java.lang.Throwable -> L1b
            if (r5 != 0) goto L8a
            ٴᵎ.ʻٴ r6 = r4.mo7616()     // Catch: java.lang.Throwable -> L1b
        L8a:
            ٴᵎ.ـˆ r4 = r6.f14197     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L93
            java.lang.Throwable r4 = r6.f14196     // Catch: java.lang.Throwable -> L1b
            if (r4 != 0) goto L93
            r7 = r8
        L93:
            if (r7 == 0) goto L9f
            ٴᵎ.ـˆ r0 = r6.f14198     // Catch: java.lang.Throwable -> L1b
            ٴᵎ.ᵔﹳ r0 = r0.mo7617()     // Catch: java.lang.Throwable -> L1b
            r10.m7415()
            return r0
        L9f:
            java.lang.Throwable r4 = r6.f14196     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto Lb2
            boolean r5 = r4 instanceof java.io.IOException     // Catch: java.lang.Throwable -> L1b
            if (r5 == 0) goto Lb1
            if (r3 != 0) goto Lad
            java.io.IOException r4 = (java.io.IOException) r4     // Catch: java.lang.Throwable -> L1b
            r3 = r4
            goto Lb2
        Lad:
            ʽٴ.ˈ.ⁱˊ(r3, r4)     // Catch: java.lang.Throwable -> L1b
            goto Lb2
        Lb1:
            throw r4     // Catch: java.lang.Throwable -> L1b
        Lb2:
            ٴᵎ.ـˆ r4 = r6.f14197     // Catch: java.lang.Throwable -> L1b
            if (r4 == 0) goto La
            ﹶˈ.ᵔᵢ r5 = r0.mo7625()     // Catch: java.lang.Throwable -> L1b
            r5.addFirst(r4)     // Catch: java.lang.Throwable -> L1b
            goto La
        Lbf:
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L1b
            java.lang.String r1 = "Canceled"
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L1b
            throw r0     // Catch: java.lang.Throwable -> L1b
        Lc7:
            r10.m7415()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p274.C3488.mo7423():ٴᵎ.ᵔﹳ");
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C3488 m7424(C5322 c5322, long j) {
        return new C3488(c5322, (String) this.f13690, (String) this.f13685, (String) this.f13686, this.f13688, j, (C5294) this.f13687);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long m7425(long j) {
        long m7418 = m7418(j);
        InterfaceC3486 interfaceC3486 = (InterfaceC3486) this.f13687;
        AbstractC3731.m7868(interfaceC3486);
        return (interfaceC3486.mo4589(this.f13688, j) + m7418) - 1;
    }
}
