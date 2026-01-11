package p409;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.util.SparseIntArray;
import androidx.leanback.widget.RunnableC0114;
import androidx.leanback.widget.RunnableC0142;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.UnsupportedApiCallException;
import com.google.android.gms.internal.measurement.HandlerC0337;
import com.parse.ٴʼ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;
import p027.C1102;
import p098.C1898;
import p098.C1899;
import p137.AbstractC2305;
import p220.C3032;
import p229.C3125;
import p255.C3368;
import p255.C3370;
import p296.AbstractC3659;
import p296.C3670;
import p319.C3926;
import p319.C3930;
import p319.C3936;
import p369.AbstractC4503;
import p369.InterfaceC4504;
import p369.InterfaceC4505;
import p369.InterfaceC4507;
import p384.C4603;
import ᵢ.ﹳٴ;

/* renamed from: ﹳˊ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4840 implements InterfaceC4504, InterfaceC4505 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f18150;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final InterfaceC4507 f18153;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean f18154;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3125 f18155;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final /* synthetic */ C4844 f18156;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C4855 f18159;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final LinkedList f18151 = new LinkedList();

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final HashSet f18157 = new HashSet();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final HashMap f18149 = new HashMap();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ArrayList f18158 = new ArrayList();

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C3936 f18152 = null;

    public C4840(C4844 c4844, AbstractC4503 abstractC4503) {
        this.f18156 = c4844;
        Looper looper = c4844.f18174.getLooper();
        Context context = abstractC4503.f16864;
        ﹳٴ r0 = new ﹳٴ(16, false);
        Set set = Collections.EMPTY_SET;
        if (((C3370) r0.ˈٴ) == null) {
            r0.ˈٴ = new C3370(0);
        }
        ((C3370) r0.ˈٴ).addAll(set);
        r0.ʽʽ = context.getClass().getName();
        r0.ᴵˊ = context.getPackageName();
        ٴʼ r3 = new ٴʼ((C3370) r0.ˈٴ, (String) r0.ᴵˊ, (String) r0.ʽʽ);
        C1899 c1899 = (C1899) abstractC4503.f16858.f11943;
        AbstractC3659.m7687(c1899);
        C3670 c3670 = abstractC4503.f16859;
        Context context2 = abstractC4503.f16864;
        c1899.getClass();
        C1898 c1898 = new C1898(context2, looper, r3, c3670, this, this);
        String str = abstractC4503.f16863;
        if (str != null) {
            c1898.f14383 = str;
        }
        this.f18153 = c1898;
        this.f18159 = abstractC4503.f16860;
        this.f18155 = new C3125(23);
        this.f18150 = abstractC4503.f16865;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m9636(int i) {
        C4844 c4844 = this.f18156;
        HandlerC0337 handlerC0337 = c4844.f18174;
        AbstractC3659.m7685(c4844.f18174);
        this.f18152 = null;
        this.f18154 = true;
        String m9075 = this.f18153.m9075();
        C3125 c3125 = this.f18155;
        c3125.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (m9075 != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(m9075);
        }
        c3125.m6829(true, new Status(20, sb.toString(), null, null));
        C4855 c4855 = this.f18159;
        handlerC0337.sendMessageDelayed(Message.obtain(handlerC0337, 9, c4855), 5000L);
        handlerC0337.sendMessageDelayed(Message.obtain(handlerC0337, 11, c4855), 120000L);
        ((SparseIntArray) c4844.f18179.f11943).clear();
        Iterator it = this.f18149.values().iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m9637() {
        AbstractC3659.m7685(this.f18156.f18174);
        Status status = C4844.f18168;
        m9645(status);
        this.f18155.m6829(false, status);
        for (AbstractC4858 abstractC4858 : (AbstractC4858[]) this.f18149.keySet().toArray(new AbstractC4858[0])) {
            m9643(new C4856(new C3032()));
        }
        m9646(new C3936(4));
        InterfaceC4507 interfaceC4507 = this.f18153;
        if (interfaceC4507.m9081()) {
            interfaceC4507.m9073(new C4603(this));
        }
    }

    @Override // p369.InterfaceC4504
    /* renamed from: ʽ */
    public final void mo9070(int i) {
        Looper myLooper = Looper.myLooper();
        HandlerC0337 handlerC0337 = this.f18156.f18174;
        if (myLooper == handlerC0337.getLooper()) {
            m9636(i);
        } else {
            handlerC0337.post(new RunnableC0114(i, 4, this));
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9638() {
        C4844 c4844 = this.f18156;
        HandlerC0337 handlerC0337 = c4844.f18174;
        C4855 c4855 = this.f18159;
        handlerC0337.removeMessages(12, c4855);
        handlerC0337.sendMessageDelayed(handlerC0337.obtainMessage(12, c4855), c4844.f18173);
    }

    @Override // p369.InterfaceC4504
    /* renamed from: ˈ */
    public final void mo9071() {
        Looper myLooper = Looper.myLooper();
        HandlerC0337 handlerC0337 = this.f18156.f18174;
        if (myLooper == handlerC0337.getLooper()) {
            m9644();
        } else {
            handlerC0337.post(new RunnableC0142(28, this));
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m9639() {
        C4844 c4844 = this.f18156;
        AbstractC3659.m7685(c4844.f18174);
        InterfaceC4507 interfaceC4507 = this.f18153;
        if (interfaceC4507.m9081() || interfaceC4507.m9076()) {
            return;
        }
        try {
            C3125 c3125 = c4844.f18179;
            Context context = c4844.f18181;
            SparseIntArray sparseIntArray = (SparseIntArray) c3125.f11943;
            AbstractC3659.m7687(context);
            int mo4842 = interfaceC4507.mo4842();
            int i = ((SparseIntArray) c3125.f11943).get(mo4842, -1);
            if (i == -1) {
                i = 0;
                int i2 = 0;
                while (true) {
                    if (i2 >= sparseIntArray.size()) {
                        i = -1;
                        break;
                    }
                    int keyAt = sparseIntArray.keyAt(i2);
                    if (keyAt > mo4842 && sparseIntArray.get(keyAt) == 0) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i == -1) {
                    i = ((C3930) c3125.f11941).m8112(context, mo4842);
                }
                sparseIntArray.put(mo4842, i);
            }
            if (i == 0) {
                C1102 c1102 = new C1102(c4844, interfaceC4507, this.f18159);
                if (interfaceC4507.m9082()) {
                    AbstractC3659.m7687(null);
                    throw null;
                }
                try {
                    interfaceC4507.m9083(c1102);
                    return;
                } catch (SecurityException e) {
                    m9640(new C3936(10), e);
                    return;
                }
            }
            C3936 c3936 = new C3936(i, null);
            String str = "The service for " + interfaceC4507.getClass().getName() + " is not available: " + c3936.toString();
            m9640(c3936, null);
        } catch (IllegalStateException e2) {
            m9640(new C3936(10), e2);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m9640(C3936 c3936, RuntimeException runtimeException) {
        AbstractC3659.m7685(this.f18156.f18174);
        AbstractC3659.m7685(this.f18156.f18174);
        this.f18152 = null;
        ((SparseIntArray) this.f18156.f18179.f11943).clear();
        m9646(c3936);
        if ((this.f18153 instanceof C1898) && c3936.f15226 != 24) {
            C4844 c4844 = this.f18156;
            c4844.f18180 = true;
            HandlerC0337 handlerC0337 = c4844.f18174;
            handlerC0337.sendMessageDelayed(handlerC0337.obtainMessage(19), 300000L);
        }
        if (c3936.f15226 == 4) {
            m9645(C4844.f18171);
            return;
        }
        if (this.f18151.isEmpty()) {
            this.f18152 = c3936;
            return;
        }
        if (runtimeException != null) {
            AbstractC3659.m7685(this.f18156.f18174);
            m9648(null, runtimeException, false);
            return;
        }
        if (!this.f18156.f18185) {
            m9645(C4844.m9653(this.f18159, c3936));
            return;
        }
        m9648(C4844.m9653(this.f18159, c3936), null, true);
        if (this.f18151.isEmpty() || m9647(c3936) || this.f18156.m9656(c3936, this.f18150)) {
            return;
        }
        if (c3936.f15226 == 18) {
            this.f18154 = true;
        }
        if (!this.f18154) {
            m9645(C4844.m9653(this.f18159, c3936));
            return;
        }
        C4844 c48442 = this.f18156;
        C4855 c4855 = this.f18159;
        HandlerC0337 handlerC03372 = c48442.f18174;
        handlerC03372.sendMessageDelayed(Message.obtain(handlerC03372, 9, c4855), 5000L);
    }

    @Override // p369.InterfaceC4505
    /* renamed from: ˑﹳ */
    public final void mo9072(C3936 c3936) {
        m9640(c3936, null);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m9641(AbstractC4845 abstractC4845) {
        C3926 c3926;
        if (abstractC4845 == null) {
            C3125 c3125 = this.f18155;
            InterfaceC4507 interfaceC4507 = this.f18153;
            abstractC4845.mo9664(c3125, interfaceC4507.m9082());
            try {
                abstractC4845.mo9661(this);
                return true;
            } catch (DeadObjectException unused) {
                mo9070(1);
                interfaceC4507.m9074("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        C3926[] mo9662 = abstractC4845.mo9662(this);
        if (mo9662 != null && mo9662.length != 0) {
            C3926[] m9078 = this.f18153.m9078();
            if (m9078 == null) {
                m9078 = new C3926[0];
            }
            C3368 c3368 = new C3368(m9078.length);
            for (C3926 c39262 : m9078) {
                c3368.put(c39262.f15195, Long.valueOf(c39262.m8092()));
            }
            int length = mo9662.length;
            for (int i = 0; i < length; i++) {
                c3926 = mo9662[i];
                Long l = (Long) c3368.get(c3926.f15195);
                if (l == null || l.longValue() < c3926.m8092()) {
                    break;
                }
            }
        }
        c3926 = null;
        if (c3926 == null) {
            C3125 c31252 = this.f18155;
            InterfaceC4507 interfaceC45072 = this.f18153;
            abstractC4845.mo9664(c31252, interfaceC45072.m9082());
            try {
                abstractC4845.mo9661(this);
                return true;
            } catch (DeadObjectException unused2) {
                mo9070(1);
                interfaceC45072.m9074("DeadObjectException thrown while running ApiCallRunner.");
                return true;
            }
        }
        String str = this.f18153.getClass().getName() + " could not execute call because it requires feature (" + c3926.f15195 + ", " + c3926.m8092() + ").";
        if (!this.f18156.f18185 || !abstractC4845.mo9663(this)) {
            abstractC4845.mo9660(new UnsupportedApiCallException(c3926));
            return true;
        }
        C4843 c4843 = new C4843(this.f18159, c3926);
        int indexOf = this.f18158.indexOf(c4843);
        if (indexOf >= 0) {
            C4843 c48432 = (C4843) this.f18158.get(indexOf);
            this.f18156.f18174.removeMessages(15, c48432);
            HandlerC0337 handlerC0337 = this.f18156.f18174;
            handlerC0337.sendMessageDelayed(Message.obtain(handlerC0337, 15, c48432), 5000L);
        } else {
            this.f18158.add(c4843);
            HandlerC0337 handlerC03372 = this.f18156.f18174;
            handlerC03372.sendMessageDelayed(Message.obtain(handlerC03372, 15, c4843), 5000L);
            HandlerC0337 handlerC03373 = this.f18156.f18174;
            handlerC03373.sendMessageDelayed(Message.obtain(handlerC03373, 16, c4843), 120000L);
            C3936 c3936 = new C3936(2, null);
            if (!m9647(c3936)) {
                this.f18156.m9656(c3936, this.f18150);
            }
        }
        return false;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9642() {
        LinkedList linkedList = this.f18151;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AbstractC4845 abstractC4845 = (AbstractC4845) arrayList.get(i);
            if (!this.f18153.m9081()) {
                return;
            }
            if (m9641(abstractC4845)) {
                linkedList.remove(abstractC4845);
            }
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m9643(AbstractC4845 abstractC4845) {
        AbstractC3659.m7685(this.f18156.f18174);
        boolean m9081 = this.f18153.m9081();
        LinkedList linkedList = this.f18151;
        if (m9081) {
            if (m9641(abstractC4845)) {
                m9638();
                return;
            } else {
                linkedList.add(abstractC4845);
                return;
            }
        }
        linkedList.add(abstractC4845);
        C3936 c3936 = this.f18152;
        if (c3936 == null || c3936.f15226 == 0 || c3936.f15223 == null) {
            m9639();
        } else {
            m9640(c3936, null);
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9644() {
        C4844 c4844 = this.f18156;
        AbstractC3659.m7685(c4844.f18174);
        this.f18152 = null;
        m9646(C3936.f15222);
        HandlerC0337 handlerC0337 = c4844.f18174;
        if (this.f18154) {
            C4855 c4855 = this.f18159;
            handlerC0337.removeMessages(11, c4855);
            handlerC0337.removeMessages(9, c4855);
            this.f18154 = false;
        }
        Iterator it = this.f18149.values().iterator();
        if (it.hasNext()) {
            throw AbstractC2305.m5372(it);
        }
        m9642();
        m9638();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9645(Status status) {
        AbstractC3659.m7685(this.f18156.f18174);
        m9648(status, null, false);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9646(C3936 c3936) {
        HashSet hashSet = this.f18157;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
        } else {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (AbstractC3659.m7679(c3936, C3936.f15222)) {
                this.f18153.m9080();
            }
            throw null;
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean m9647(C3936 c3936) {
        synchronized (C4844.f18170) {
        }
        return false;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9648(Status status, Exception exc, boolean z) {
        AbstractC3659.m7685(this.f18156.f18174);
        if ((status == null) == (exc == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.f18151.iterator();
        while (it.hasNext()) {
            AbstractC4845 abstractC4845 = (AbstractC4845) it.next();
            if (!z || abstractC4845.f18186 == 2) {
                if (status != null) {
                    abstractC4845.mo9659(status);
                } else {
                    abstractC4845.mo9660(exc);
                }
                it.remove();
            }
        }
    }
}
