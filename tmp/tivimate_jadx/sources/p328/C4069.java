package p328;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import p010.AbstractC0844;
import p035.AbstractC1220;
import p255.C3368;
import p307.AbstractC3740;

/* renamed from: ᴵᵔ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4069 extends AbstractC4084 implements InterfaceC4081 {

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static final C4063 f15487 = new Object();

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C4083 f15488;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public InterfaceC4064 f15489;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public long f15490;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public AbstractC4076 f15492;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public boolean f15495;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public boolean f15496;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public int f15497;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f15498;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C4074 f15499;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public C4075 f15502;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f15504;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public long f15505;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public long f15506;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ArrayList f15491 = new ArrayList();

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3368 f15501 = new C3368(0);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ArrayList f15494 = new ArrayList();

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public ArrayList f15500 = new ArrayList();

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f15493 = false;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f15503 = false;

    public C4069() {
        C4074 m8318 = C4074.m8318(0.0f, 1.0f);
        m8318.mo8305(0L);
        this.f15499 = m8318;
        C4075 c4075 = new C4075(m8318);
        this.f15502 = c4075;
        this.f15504 = -1L;
        this.f15489 = null;
        this.f15505 = 0L;
        this.f15490 = -1L;
        this.f15497 = -1;
        this.f15496 = false;
        this.f15495 = true;
        this.f15488 = new C4083(this);
        this.f15498 = false;
        this.f15506 = -1L;
        this.f15492 = new C4078(this, 0);
        this.f15501.put(m8318, c4075);
        this.f15500.add(this.f15502);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static void m8283(C4075 c4075, ArrayList arrayList) {
        if (arrayList.contains(c4075)) {
            return;
        }
        arrayList.add(c4075);
        if (c4075.f15532 == null) {
            return;
        }
        for (int i = 0; i < c4075.f15532.size(); i++) {
            m8283((C4075) c4075.f15532.get(i), arrayList);
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static void m8284(long j, C4075 c4075) {
        if (c4075.f15530) {
            return;
        }
        c4075.f15530 = c4075.f15531.mo8310(((float) j) * 1.0f);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static boolean m8285(C4069 c4069) {
        for (int i = 0; i < c4069.m8308().size(); i++) {
            AbstractC4084 abstractC4084 = (AbstractC4084) c4069.m8308().get(i);
            if (!(abstractC4084 instanceof C4069) || !m8285((C4069) abstractC4084)) {
                return false;
            }
        }
        return true;
    }

    @Override // p328.AbstractC4084
    public final void cancel() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (this.f15503) {
            ArrayList arrayList = this.f15557;
            if (arrayList != null) {
                ArrayList arrayList2 = (ArrayList) arrayList.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((InterfaceC4068) arrayList2.get(i)).mo8282();
                }
            }
            ArrayList arrayList3 = new ArrayList(this.f15491);
            int size2 = arrayList3.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((C4075) arrayList3.get(i2)).f15531.cancel();
            }
            this.f15491.clear();
            m8300();
        }
    }

    public final String toString() {
        String str = "AnimatorSet@" + Integer.toHexString(hashCode()) + "{";
        int size = this.f15500.size();
        for (int i = 0; i < size; i++) {
            C4075 c4075 = (C4075) this.f15500.get(i);
            StringBuilder m3017 = AbstractC0844.m3017(str, "\n    ");
            m3017.append(c4075.f15531.toString());
            str = m3017.toString();
        }
        return AbstractC1220.m3791(str, "\n}");
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m8286() {
        boolean z;
        if (!this.f15493) {
            for (int i = 0; i < this.f15500.size(); i++) {
                if (((C4075) this.f15500.get(i)).f15535 == ((C4075) this.f15500.get(i)).f15531.mo8287()) {
                }
            }
            return;
        }
        this.f15493 = false;
        int size = this.f15500.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((C4075) this.f15500.get(i2)).f15536 = false;
        }
        for (int i3 = 0; i3 < size; i3++) {
            C4075 c4075 = (C4075) this.f15500.get(i3);
            if (!c4075.f15536) {
                c4075.f15536 = true;
                ArrayList arrayList = c4075.f15532;
                if (arrayList != null) {
                    m8283(c4075, arrayList);
                    c4075.f15532.remove(c4075);
                    int size2 = c4075.f15532.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        ArrayList arrayList2 = ((C4075) c4075.f15532.get(i4)).f15538;
                        if (arrayList2 != null) {
                            int size3 = arrayList2.size();
                            for (int i5 = 0; i5 < size3; i5++) {
                                c4075.m8336((C4075) arrayList2.get(i5));
                            }
                        }
                    }
                    for (int i6 = 0; i6 < size2; i6++) {
                        C4075 c40752 = (C4075) c4075.f15532.get(i6);
                        ArrayList arrayList3 = c4075.f15538;
                        c40752.getClass();
                        if (arrayList3 != null) {
                            int size4 = arrayList3.size();
                            for (int i7 = 0; i7 < size4; i7++) {
                                c40752.m8336((C4075) arrayList3.get(i7));
                            }
                        }
                        c40752.f15536 = true;
                    }
                }
            }
        }
        for (int i8 = 0; i8 < size; i8++) {
            C4075 c40753 = (C4075) this.f15500.get(i8);
            C4075 c40754 = this.f15502;
            if (c40753 != c40754 && c40753.f15538 == null) {
                c40753.m8336(c40754);
            }
        }
        ArrayList arrayList4 = new ArrayList(this.f15500.size());
        C4075 c40755 = this.f15502;
        c40755.f15533 = 0L;
        c40755.f15539 = this.f15499.f15528;
        m8301(c40755, arrayList4);
        this.f15494.clear();
        for (int i9 = 1; i9 < this.f15500.size(); i9++) {
            C4075 c40756 = (C4075) this.f15500.get(i9);
            this.f15494.add(new C4067(c40756, 0));
            this.f15494.add(new C4067(c40756, 1));
            this.f15494.add(new C4067(c40756, 2));
        }
        Collections.sort(this.f15494, f15487);
        int size5 = this.f15494.size();
        int i10 = 0;
        while (i10 < size5) {
            C4067 c4067 = (C4067) this.f15494.get(i10);
            int i11 = c4067.f15485;
            C4075 c40757 = c4067.f15486;
            if (i11 == 2) {
                long j = c40757.f15533;
                long j2 = c40757.f15539;
                if (j == j2) {
                    z = true;
                } else {
                    c40757.f15531.getClass();
                    if (j2 == j) {
                        z = false;
                    }
                }
                int i12 = i10 + 1;
                int i13 = size5;
                int i14 = i13;
                for (int i15 = i12; i15 < size5 && (i13 >= size5 || i14 >= size5); i15++) {
                    if (((C4067) this.f15494.get(i15)).f15486 == c40757) {
                        if (((C4067) this.f15494.get(i15)).f15485 == 0) {
                            i13 = i15;
                        } else if (((C4067) this.f15494.get(i15)).f15485 == 1) {
                            i14 = i15;
                        }
                    }
                }
                if (z && i13 == this.f15494.size()) {
                    throw new UnsupportedOperationException("Something went wrong, no start isfound after stop for an animation that has the same start and endtime.");
                }
                if (i14 == this.f15494.size()) {
                    throw new UnsupportedOperationException("Something went wrong, no startdelay end is found after stop for an animation");
                }
                if (z) {
                    this.f15494.add(i10, (C4067) this.f15494.remove(i13));
                    i10 = i12;
                }
                this.f15494.add(i10, (C4067) this.f15494.remove(i14));
                i10 += 2;
            }
            i10++;
        }
        if (!this.f15494.isEmpty() && ((C4067) this.f15494.get(0)).f15485 != 0) {
            throw new UnsupportedOperationException("Sorting went bad, the start event should always be at index 0");
        }
        this.f15494.add(0, new C4067(this.f15502, 0));
        this.f15494.add(1, new C4067(this.f15502, 1));
        this.f15494.add(2, new C4067(this.f15502, 2));
        if (((C4067) AbstractC3740.m7939(1, this.f15494)).f15485 == 0 || ((C4067) AbstractC3740.m7939(1, this.f15494)).f15485 == 1) {
            throw new UnsupportedOperationException("Something went wrong, the last event is not an end event");
        }
        this.f15505 = ((C4067) AbstractC3740.m7939(1, this.f15494)).m8277();
    }

    @Override // p328.AbstractC4084
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final long mo8287() {
        m8304();
        m8286();
        return this.f15505;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo8288(InterfaceC4064 interfaceC4064) {
        this.f15489 = interfaceC4064;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m8289(int i, long j, int i2) {
        if (!this.f15496) {
            for (int i3 = i + 1; i3 <= i2; i3++) {
                C4067 c4067 = (C4067) this.f15494.get(i3);
                C4075 c4075 = c4067.f15486;
                int i4 = c4067.f15485;
                if (i4 == 0) {
                    this.f15491.add(c4075);
                    if (c4075.f15531.mo8302()) {
                        c4075.f15531.cancel();
                    }
                    c4075.f15530 = false;
                    c4075.f15531.mo8298(false);
                    m8284(0L, c4075);
                } else if (i4 == 2 && !c4075.f15530) {
                    m8284(m8303(j, c4075), c4075);
                }
            }
            return;
        }
        if (i == -1) {
            i = this.f15494.size();
        }
        for (int i5 = i - 1; i5 >= i2; i5--) {
            C4067 c40672 = (C4067) this.f15494.get(i5);
            C4075 c40752 = c40672.f15486;
            int i6 = c40672.f15485;
            if (i6 == 2) {
                if (c40752.f15531.mo8302()) {
                    c40752.f15531.cancel();
                }
                c40752.f15530 = false;
                this.f15491.add(c40672.f15486);
                c40752.f15531.mo8298(true);
                m8284(0L, c40752);
            } else if (i6 == 1 && !c40752.f15530) {
                m8284(m8303(j, c40752), c40752);
            }
        }
    }

    @Override // p328.AbstractC4084
    /* renamed from: ʽﹳ, reason: contains not printable characters and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final C4069 mo8311() {
        C4069 c4069 = (C4069) super.mo8311();
        int size = this.f15500.size();
        c4069.f15503 = false;
        c4069.f15490 = -1L;
        c4069.f15497 = -1;
        c4069.f15506 = -1L;
        c4069.f15488 = new C4083(this);
        c4069.f15495 = true;
        c4069.f15491 = new ArrayList();
        c4069.f15501 = new C3368(0);
        c4069.f15500 = new ArrayList(size);
        c4069.f15494 = new ArrayList();
        c4069.f15492 = new C4078(c4069, 1);
        c4069.f15496 = false;
        c4069.f15493 = true;
        HashMap hashMap = new HashMap(size);
        for (int i = 0; i < size; i++) {
            C4075 c4075 = (C4075) this.f15500.get(i);
            C4075 clone = c4075.clone();
            AbstractC4084 abstractC4084 = clone.f15531;
            AbstractC4076 abstractC4076 = this.f15492;
            ArrayList arrayList = abstractC4084.f15557;
            if (arrayList != null) {
                arrayList.remove(abstractC4076);
                if (abstractC4084.f15557.size() == 0) {
                    abstractC4084.f15557 = null;
                }
            }
            hashMap.put(c4075, clone);
            c4069.f15500.add(clone);
            c4069.f15501.put(clone.f15531, clone);
        }
        C4075 c40752 = (C4075) hashMap.get(this.f15502);
        c4069.f15502 = c40752;
        c4069.f15499 = (C4074) c40752.f15531;
        for (int i2 = 0; i2 < size; i2++) {
            C4075 c40753 = (C4075) this.f15500.get(i2);
            C4075 c40754 = (C4075) hashMap.get(c40753);
            C4075 c40755 = c40753.f15534;
            c40754.f15534 = c40755 == null ? null : (C4075) hashMap.get(c40755);
            ArrayList arrayList2 = c40753.f15537;
            int size2 = arrayList2 == null ? 0 : arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                c40754.f15537.set(i3, (C4075) hashMap.get(c40753.f15537.get(i3)));
            }
            ArrayList arrayList3 = c40753.f15532;
            int size3 = arrayList3 == null ? 0 : arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                c40754.f15532.set(i4, (C4075) hashMap.get(c40753.f15532.get(i4)));
            }
            ArrayList arrayList4 = c40753.f15538;
            int size4 = arrayList4 == null ? 0 : arrayList4.size();
            for (int i5 = 0; i5 < size4; i5++) {
                c40754.f15538.set(i5, (C4075) hashMap.get(c40753.f15538.get(i5)));
            }
        }
        return c4069;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4075 m8291(AbstractC4084 abstractC4084) {
        C4075 c4075 = (C4075) this.f15501.get(abstractC4084);
        if (c4075 == null) {
            c4075 = new C4075(abstractC4084);
            this.f15501.put(abstractC4084, c4075);
            this.f15500.add(c4075);
            if (abstractC4084 instanceof C4069) {
                ((C4069) abstractC4084).f15495 = false;
            }
        }
        return c4075;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int m8292(long j) {
        int size = this.f15494.size();
        int i = this.f15497;
        if (!this.f15496) {
            for (int i2 = i + 1; i2 < size; i2++) {
                C4067 c4067 = (C4067) this.f15494.get(i2);
                if (c4067.m8277() != -1 && c4067.m8277() <= j) {
                    i = i2;
                }
            }
            return i;
        }
        long mo8287 = mo8287() - j;
        int i3 = this.f15497;
        if (i3 != -1) {
            size = i3;
        }
        this.f15497 = size;
        for (int i4 = size - 1; i4 >= 0; i4--) {
            if (((C4067) this.f15494.get(i4)).m8277() >= mo8287) {
                i = i4;
            }
        }
        return i;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean mo8293() {
        boolean z = true;
        if (this.f15498) {
            return true;
        }
        int i = 0;
        while (true) {
            if (i >= this.f15500.size()) {
                break;
            }
            if (!((C4075) this.f15500.get(i)).f15531.mo8293()) {
                z = false;
                break;
            }
            i++;
        }
        this.f15498 = z;
        return z;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m8294() {
        if (this.f15489 != null) {
            for (int i = 0; i < this.f15500.size(); i++) {
                ((C4075) this.f15500.get(i)).f15531.mo8288(this.f15489);
            }
        }
        m8304();
        m8286();
    }

    @Override // p328.AbstractC4084
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo8295() {
        m8296(true, true);
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m8296(boolean z, boolean z2) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.f15503 = true;
        this.f15495 = z2;
        this.f15506 = -1L;
        int size = this.f15500.size();
        for (int i = 0; i < size; i++) {
            ((C4075) this.f15500.get(i)).f15530 = false;
        }
        m8294();
        if (z && mo8287() == -1) {
            throw new UnsupportedOperationException("Cannot reverse infinite AnimatorSet");
        }
        this.f15496 = z;
        boolean m8285 = m8285(this);
        if (!m8285) {
            for (int i2 = 1; i2 < this.f15500.size(); i2++) {
                ((C4075) this.f15500.get(i2)).f15531.m8343(this.f15492);
            }
            C4083 c4083 = this.f15488;
            C4069 c4069 = c4083.f15553;
            long j = 0;
            if ((c4069.f15496 ? c4069.mo8287() - c4083.f15555 : c4083.f15555) == 0 && this.f15496) {
                C4083 c40832 = this.f15488;
                c40832.f15555 = -1L;
                c40832.f15554 = false;
            }
            if (mo8293()) {
                mo8307(!this.f15496);
            } else if (this.f15496) {
                if (!mo8293()) {
                    this.f15498 = true;
                    mo8307(false);
                }
                mo8307(!this.f15496);
            } else {
                for (int size2 = this.f15494.size() - 1; size2 >= 0; size2--) {
                    if (((C4067) this.f15494.get(size2)).f15485 == 1) {
                        AbstractC4084 abstractC4084 = ((C4067) this.f15494.get(size2)).f15486.f15531;
                        if (abstractC4084.mo8293()) {
                            abstractC4084.mo8307(true);
                        }
                    }
                }
            }
            C4083 c40833 = this.f15488;
            if (c40833.f15555 != -1) {
                c40833.m8341(this.f15496);
                j = this.f15488.f15555;
            }
            int m8292 = m8292(j);
            m8289(-1, j, m8292);
            for (int size3 = this.f15491.size() - 1; size3 >= 0; size3--) {
                if (((C4075) this.f15491.get(size3)).f15530) {
                    this.f15491.remove(size3);
                }
            }
            this.f15497 = m8292;
            if (this.f15495) {
                AbstractC4084.m8342(this);
            }
        }
        ArrayList arrayList = this.f15557;
        if (arrayList != null) {
            ArrayList arrayList2 = (ArrayList) arrayList.clone();
            int size4 = arrayList2.size();
            for (int i3 = 0; i3 < size4; i3++) {
                ((InterfaceC4068) arrayList2.get(i3)).mo8280(this);
            }
        }
        if (m8285) {
            mo8306();
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m8297(AbstractC4084... abstractC4084Arr) {
        AbstractC4084 abstractC4084 = abstractC4084Arr[0];
        this.f15493 = true;
        C4075 m8291 = m8291(abstractC4084);
        for (int i = 1; i < abstractC4084Arr.length; i++) {
            m8291.m8335(m8291(abstractC4084Arr[i]));
        }
    }

    @Override // p328.AbstractC4084
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo8298(boolean z) {
        m8296(z, false);
    }

    @Override // p328.AbstractC4084
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo8299() {
        m8296(false, true);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8300() {
        C4065 m8271;
        ArrayList arrayList;
        int indexOf;
        this.f15503 = false;
        this.f15490 = -1L;
        this.f15497 = -1;
        this.f15506 = -1L;
        C4083 c4083 = this.f15488;
        c4083.f15555 = -1L;
        c4083.f15554 = false;
        this.f15491.clear();
        if (this.f15495 && (indexOf = (arrayList = (m8271 = C4065.m8271()).f15468).indexOf(this)) >= 0) {
            arrayList.set(indexOf, null);
            m8271.f15467 = true;
        }
        ArrayList arrayList2 = this.f15557;
        if (arrayList2 != null) {
            ArrayList arrayList3 = (ArrayList) arrayList2.clone();
            int size = arrayList3.size();
            for (int i = 0; i < size; i++) {
                ((InterfaceC4068) arrayList3.get(i)).mo8279(this);
            }
        }
        for (int i2 = 1; i2 < this.f15500.size(); i2++) {
            AbstractC4084 abstractC4084 = ((C4075) this.f15500.get(i2)).f15531;
            AbstractC4076 abstractC4076 = this.f15492;
            ArrayList arrayList4 = abstractC4084.f15557;
            if (arrayList4 != null) {
                arrayList4.remove(abstractC4076);
                if (abstractC4084.f15557.size() == 0) {
                    abstractC4084.f15557 = null;
                }
            }
        }
        this.f15495 = true;
        this.f15496 = false;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m8301(C4075 c4075, ArrayList arrayList) {
        int i = 0;
        if (c4075.f15537 == null) {
            if (c4075 == this.f15502) {
                while (i < this.f15500.size()) {
                    C4075 c40752 = (C4075) this.f15500.get(i);
                    if (c40752 != this.f15502) {
                        c40752.f15533 = -1L;
                        c40752.f15539 = -1L;
                    }
                    i++;
                }
                return;
            }
            return;
        }
        arrayList.add(c4075);
        int size = c4075.f15537.size();
        while (i < size) {
            C4075 c40753 = (C4075) c4075.f15537.get(i);
            c40753.f15535 = c40753.f15531.mo8287();
            int indexOf = arrayList.indexOf(c40753);
            if (indexOf >= 0) {
                while (indexOf < arrayList.size()) {
                    ((C4075) arrayList.get(indexOf)).f15534 = null;
                    ((C4075) arrayList.get(indexOf)).f15533 = -1L;
                    ((C4075) arrayList.get(indexOf)).f15539 = -1L;
                    indexOf++;
                }
                c40753.f15533 = -1L;
                c40753.f15539 = -1L;
                c40753.f15534 = null;
                String str = "Cycle found in AnimatorSet: " + this;
            } else {
                long j = c40753.f15533;
                if (j != -1) {
                    long j2 = c4075.f15539;
                    if (j2 == -1) {
                        c40753.f15534 = c4075;
                        c40753.f15533 = -1L;
                        c40753.f15539 = -1L;
                    } else {
                        if (j2 >= j) {
                            c40753.f15534 = c4075;
                            c40753.f15533 = j2;
                        }
                        long j3 = c40753.f15535;
                        c40753.f15539 = j3 == -1 ? -1L : c40753.f15533 + j3;
                    }
                }
                m8301(c40753, arrayList);
            }
            i++;
        }
        arrayList.remove(c4075);
    }

    @Override // p328.AbstractC4084
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean mo8302() {
        return this.f15503;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long m8303(long j, C4075 c4075) {
        long j2;
        if (this.f15496) {
            j2 = mo8287() - j;
            j = c4075.f15539;
        } else {
            j2 = c4075.f15533;
        }
        return j - j2;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m8304() {
        if (this.f15504 >= 0) {
            int size = this.f15500.size();
            for (int i = 0; i < size; i++) {
                ((C4075) this.f15500.get(i)).f15531.mo8305(this.f15504);
            }
        }
        this.f15499.mo8305(0L);
    }

    @Override // p328.AbstractC4084
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final AbstractC4084 mo8305(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("duration must be a value of zero or greater");
        }
        this.f15493 = true;
        this.f15504 = j;
        return this;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo8306() {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        if (this.f15503) {
            if (this.f15496) {
                int i = this.f15497;
                if (i == -1) {
                    i = this.f15494.size();
                }
                this.f15497 = i;
                while (true) {
                    int i2 = this.f15497;
                    if (i2 <= 0) {
                        break;
                    }
                    int i3 = i2 - 1;
                    this.f15497 = i3;
                    C4067 c4067 = (C4067) this.f15494.get(i3);
                    AbstractC4084 abstractC4084 = c4067.f15486.f15531;
                    if (!((C4075) this.f15501.get(abstractC4084)).f15530) {
                        int i4 = c4067.f15485;
                        if (i4 == 2) {
                            abstractC4084.mo8295();
                        } else if (i4 == 1 && abstractC4084.mo8302()) {
                            abstractC4084.mo8306();
                        }
                    }
                }
            } else {
                while (this.f15497 < this.f15494.size() - 1) {
                    int i5 = this.f15497 + 1;
                    this.f15497 = i5;
                    C4067 c40672 = (C4067) this.f15494.get(i5);
                    AbstractC4084 abstractC40842 = c40672.f15486.f15531;
                    if (!((C4075) this.f15501.get(abstractC40842)).f15530) {
                        int i6 = c40672.f15485;
                        if (i6 == 0) {
                            abstractC40842.mo8299();
                        } else if (i6 == 2 && abstractC40842.mo8302()) {
                            abstractC40842.mo8306();
                        }
                    }
                }
            }
            this.f15491.clear();
        }
        m8300();
    }

    @Override // p328.AbstractC4084
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo8307(boolean z) {
        if (this.f15495 && !mo8293()) {
            throw new UnsupportedOperationException("Children must be initialized.");
        }
        m8294();
        if (z) {
            for (int size = this.f15494.size() - 1; size >= 0; size--) {
                if (((C4067) this.f15494.get(size)).f15485 == 1) {
                    ((C4067) this.f15494.get(size)).f15486.f15531.mo8307(true);
                }
            }
            return;
        }
        for (int i = 0; i < this.f15494.size(); i++) {
            if (((C4067) this.f15494.get(i)).f15485 == 2) {
                ((C4067) this.f15494.get(i)).f15486.f15531.mo8307(false);
            }
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final ArrayList m8308() {
        ArrayList arrayList = new ArrayList();
        int size = this.f15500.size();
        for (int i = 0; i < size; i++) {
            C4075 c4075 = (C4075) this.f15500.get(i);
            if (c4075 != this.f15502) {
                arrayList.add(c4075.f15531);
            }
        }
        return arrayList;
    }

    @Override // p328.InterfaceC4081
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo8309(long j) {
        if (this.f15490 < 0) {
            this.f15490 = j;
        }
        long j2 = this.f15506;
        if (j2 > 0) {
            this.f15490 = (j - j2) + this.f15490;
            this.f15506 = -1L;
        }
        C4083 c4083 = this.f15488;
        if (c4083.f15555 != -1) {
            c4083.m8341(this.f15496);
            boolean z = this.f15496;
            if (z) {
                this.f15490 = j - (((float) this.f15488.f15555) * 1.0f);
            } else {
                this.f15490 = j - (((float) this.f15488.f15555) * 1.0f);
            }
            mo8307(!z);
            this.f15491.clear();
            for (int size = this.f15500.size() - 1; size >= 0; size--) {
                ((C4075) this.f15500.get(size)).f15530 = false;
            }
            this.f15497 = -1;
            C4083 c40832 = this.f15488;
            c40832.f15555 = -1L;
            c40832.f15554 = false;
        }
        if (this.f15496 || j >= this.f15490 + (((float) 0) * 1.0f)) {
            long j3 = ((float) (j - this.f15490)) / 1.0f;
            int m8292 = m8292(j3);
            m8289(this.f15497, j3, m8292);
            this.f15497 = m8292;
            for (int i = 0; i < this.f15491.size(); i++) {
                C4075 c4075 = (C4075) this.f15491.get(i);
                if (!c4075.f15530) {
                    m8284(m8303(j3, c4075), c4075);
                }
            }
            for (int size2 = this.f15491.size() - 1; size2 >= 0; size2--) {
                if (((C4075) this.f15491.get(size2)).f15530) {
                    this.f15491.remove(size2);
                }
            }
            boolean z2 = !this.f15496 ? !(this.f15491.isEmpty() && this.f15497 == this.f15494.size() - 1) : !(this.f15491.size() == 1 && this.f15491.get(0) == this.f15502) && (!this.f15491.isEmpty() || this.f15497 >= 3);
            if (this.f15556 != null) {
                for (int i2 = 0; i2 < this.f15556.size(); i2++) {
                    ((InterfaceC4072) this.f15556.get(i2)).m8314(this);
                }
            }
            if (z2) {
                m8300();
                return true;
            }
        }
        return false;
    }

    @Override // p328.AbstractC4084
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean mo8310(long j) {
        return mo8309(j);
    }
}
