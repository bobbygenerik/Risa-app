package p229;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Spannable;
import android.text.SpannableString;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import androidx.leanback.widget.RunnableC0114;
import androidx.lifecycle.C0167;
import androidx.lifecycle.C0184;
import com.bumptech.glide.ComponentCallbacks2C0236;
import com.bumptech.glide.ComponentCallbacks2C0238;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.measurement.ᵎ;
import com.parse.ʽˑ;
import com.parse.ٴʼ;
import j$.util.DesugarCollections;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Type;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.ReentrantLock;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import p012.C0881;
import p017.AbstractC0993;
import p017.C0982;
import p027.C1102;
import p035.AbstractC1220;
import p075.C1652;
import p075.InterfaceC1653;
import p077.C1666;
import p087.AbstractC1746;
import p087.C1743;
import p098.C1899;
import p136.AbstractC2228;
import p136.C2223;
import p152.AbstractC2444;
import p171.C2640;
import p171.InterfaceC2646;
import p179.ExecutorC2748;
import p179.RunnableC2689;
import p186.AbstractC2780;
import p186.AbstractC2823;
import p186.C2798;
import p208.C2942;
import p208.InterfaceC2954;
import p220.C3029;
import p220.C3032;
import p220.InterfaceC3037;
import p234.C3194;
import p234.C3195;
import p240.C3232;
import p245.C3261;
import p245.C3269;
import p250.C3304;
import p254.C3324;
import p254.C3339;
import p254.C3342;
import p254.InterfaceC3341;
import p255.C3368;
import p257.InterfaceC3396;
import p262.C3432;
import p266.C3445;
import p266.InterfaceC3452;
import p266.InterfaceC3462;
import p275.C3501;
import p275.C3515;
import p275.C3521;
import p275.InterfaceC3511;
import p279.C3543;
import p279.C3552;
import p305.AbstractC3712;
import p305.C3724;
import p305.C3732;
import p311.AbstractC3798;
import p311.C3821;
import p311.C3827;
import p311.InterfaceC3826;
import p311.InterfaceC3838;
import p319.C3930;
import p328.AbstractC4084;
import p328.C4069;
import p333.C4205;
import p333.InterfaceC4202;
import p353.MenuC4311;
import p353.MenuC4312;
import p360.C4372;
import p363.AbstractActivityC4410;
import p363.C4433;
import p363.LayoutInflaterFactory2C4430;
import p366.C4462;
import p366.C4486;
import p366.InterfaceC4474;
import p395.C4716;
import p395.C4717;
import p395.C4731;
import p395.HandlerC4732;
import p404.C4780;
import p404.C4798;
import p404.C4807;
import p411.C4894;
import p413.C4912;
import p420.C4991;
import p456.InterfaceC5379;
import ʽٴ.ˈ;
import ˊⁱ.ˑﹳ;
import ˏˆ.ﹳٴ;
import ٴﾞ.ˆʾ;
import ᐧﹳ.ʽ;
import ᵎˉ.ⁱˊ;

/* renamed from: ˑʼ.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3125 implements InterfaceC3341, InterfaceC3452, InterfaceC3511, InterfaceC3838, InterfaceC2954, InterfaceC4474, InterfaceC5379, InterfaceC3037, InterfaceC1653 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f11941;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11942;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f11943;

    public C3125(int i) {
        this.f11942 = i;
        switch (i) {
            case 10:
                C3930 c3930 = C3930.f15206;
                this.f11943 = new SparseIntArray();
                this.f11941 = c3930;
                return;
            case 21:
                this.f11943 = new HashSet();
                return;
            case 22:
                this.f11943 = new HashMap();
                this.f11941 = new HashMap();
                return;
            case 23:
                this.f11943 = DesugarCollections.synchronizedMap(new WeakHashMap());
                this.f11941 = DesugarCollections.synchronizedMap(new WeakHashMap());
                return;
            case 25:
                this.f11943 = new AtomicInteger();
                this.f11941 = new AtomicInteger();
                return;
            default:
                this.f11943 = new ReentrantLock();
                this.f11941 = new HashMap();
                return;
        }
    }

    public /* synthetic */ C3125(int i, boolean z) {
        this.f11942 = i;
    }

    public C3125(Context context, int i) {
        this.f11942 = i;
        switch (i) {
            case 27:
                this.f11943 = context == null ? null : context.getApplicationContext();
                return;
            default:
                this.f11943 = context;
                this.f11941 = null;
                return;
        }
    }

    public C3125(Context context, InterfaceC3452 interfaceC3452) {
        this.f11942 = 5;
        this.f11943 = context.getApplicationContext();
        this.f11941 = interfaceC3452;
    }

    public /* synthetic */ C3125(Object obj) {
        this.f11942 = 9;
        this.f11941 = obj;
        this.f11943 = new ArrayList();
    }

    public /* synthetic */ C3125(Object obj, int i, Object obj2) {
        this.f11942 = i;
        this.f11943 = obj;
        this.f11941 = obj2;
    }

    public /* synthetic */ C3125(Object obj, Object obj2, int i, boolean z) {
        this.f11942 = i;
        this.f11941 = obj;
        this.f11943 = obj2;
    }

    public C3125(String str) {
        this.f11942 = 20;
        this.f11943 = str;
        try {
            this.f11941 = Mac.getInstance(str);
        } catch (NoSuchAlgorithmException | NoSuchProviderException e) {
            throw new Exception(e);
        }
    }

    public C3125(C1666 c1666) {
        this.f11942 = 14;
        this.f11943 = c1666;
    }

    public C3125(C1899 c1899, C4486 c4486) {
        this.f11942 = 19;
        this.f11941 = "ClientTelemetry.API";
        this.f11943 = c1899;
    }

    public C3125(C2640 c2640) {
        this.f11942 = 4;
        this.f11943 = c2640;
        this.f11941 = new Object();
    }

    public C3125(C3085 c3085) {
        this.f11942 = 0;
        this.f11943 = c3085;
        this.f11941 = new CopyOnWriteArrayList();
    }

    public C3125(C3342 c3342) {
        this.f11942 = 3;
        this.f11941 = c3342;
        this.f11943 = new C0881(4, new byte[4]);
    }

    public C3125(C4069 c4069, AbstractC4084 abstractC4084) {
        this.f11942 = 13;
        this.f11941 = c4069;
        c4069.f15493 = true;
        this.f11943 = c4069.m8291(abstractC4084);
    }

    public C3125(ⁱˊ r2) {
        this.f11942 = 7;
        this.f11943 = new HashMap();
        this.f11941 = r2;
    }

    public C3125(C4780 c4780) {
        this.f11942 = 22;
        this.f11943 = new HashMap(c4780.f18025);
        this.f11941 = new HashMap(c4780.f18024);
    }

    @Override // p343.InterfaceC4267
    public Object get() {
        return new C4912((Context) ((C1652) this.f11943).f6699, (ٴʼ) ((ʽ) this.f11941).get());
    }

    public String toString() {
        switch (this.f11942) {
            case 9:
                StringBuilder sb = new StringBuilder(100);
                sb.append(this.f11941.getClass().getSimpleName());
                sb.append('{');
                ArrayList arrayList = (ArrayList) this.f11943;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    sb.append((String) arrayList.get(i));
                    if (i < size - 1) {
                        sb.append(", ");
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    @Override // p456.InterfaceC5379
    public void update(byte[] bArr) {
        ((Mac) this.f11941).update(bArr);
    }

    @Override // p456.InterfaceC5379
    public void update(byte[] bArr, int i, int i2) {
        ((Mac) this.f11941).update(bArr, i, i2);
    }

    @Override // p311.InterfaceC3838
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public Type mo6814() {
        return (Type) this.f11943;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public void m6815(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6815(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C3432 m6816(C3232 c3232) {
        C3432 m5897;
        synchronized (this.f11941) {
            m5897 = ((C2640) this.f11943).m5897(c3232);
        }
        return m5897;
    }

    @Override // p208.InterfaceC2954
    /* renamed from: ʼˎ */
    public void mo6488(C2942 c2942) {
        InterfaceC3826 interfaceC3826 = (InterfaceC3826) this.f11943;
        C3821 c3821 = (C3821) this.f11941;
        try {
            try {
                interfaceC3826.mo7326(c3821, c3821.m7996(c2942));
            } catch (Throwable th) {
                AbstractC3798.m7971(th);
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            AbstractC3798.m7971(th2);
            try {
                interfaceC3826.mo7342(th2);
            } catch (Throwable th3) {
                AbstractC3798.m7971(th3);
                th3.printStackTrace();
            }
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public Bundle m6817(String str) {
        C1666 c1666 = (C1666) this.f11943;
        if (!c1666.f6773) {
            throw new IllegalStateException("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
        }
        Bundle bundle = c1666.f6777;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.containsKey(str) ? ˈ.ʼᐧ(str, bundle) : null;
        bundle.remove(str);
        if (bundle.isEmpty()) {
            c1666.f6777 = null;
        }
        return bundle2;
    }

    @Override // p254.InterfaceC3341
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo6818(C3732 c3732) {
        C3342 c3342 = (C3342) this.f11941;
        SparseArray sparseArray = c3342.f13008;
        C0881 c0881 = (C0881) this.f11943;
        if (c3732.m7874() == 0 && (c3732.m7874() & 128) != 0) {
            c3732.m7900(6);
            int m7904 = c3732.m7904() / 4;
            for (int i = 0; i < m7904; i++) {
                c3732.m7875(c0881.f3738, 0, 4);
                c0881.m3094(0);
                int m3097 = c0881.m3097(16);
                c0881.m3095(3);
                if (m3097 == 0) {
                    c0881.m3095(13);
                } else {
                    int m30972 = c0881.m3097(13);
                    if (sparseArray.get(m30972) == null) {
                        sparseArray.put(m30972, new C3324(new ʽˑ(c3342, m30972)));
                        c3342.f13015++;
                    }
                }
            }
            if (c3342.f13025 != 2) {
                sparseArray.remove(0);
            }
        }
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public void m6819(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, Bundle bundle, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6819(abstractComponentCallbacksC3123, bundle, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public void m6820(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6820(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public void m6821(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6821(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public void m6822(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6822(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // p266.InterfaceC3452
    /* renamed from: ˆʾ */
    public InterfaceC3462 mo624() {
        return new C3445((Context) this.f11943, ((InterfaceC3452) this.f11941).mo624());
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean m6823(AbstractC2228 abstractC2228, Menu menu) {
        ViewGroup viewGroup = ((LayoutInflaterFactory2C4430) this.f11941).f16523;
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2780.m6186(viewGroup);
        ﹳٴ r0 = (ﹳٴ) this.f11943;
        ActionMode.Callback callback = (ActionMode.Callback) r0.ʽʽ;
        C2223 c2223 = r0.ʽﹳ(abstractC2228);
        C3368 c3368 = (C3368) r0.ᴵᵔ;
        Menu menu2 = (Menu) c3368.get(menu);
        if (menu2 == null) {
            menu2 = new MenuC4311((Context) r0.ˈٴ, (MenuC4312) menu);
            c3368.put(menu, menu2);
        }
        return callback.onPrepareActionMode(c2223, menu2);
    }

    @Override // p275.InterfaceC3511
    /* renamed from: ˈ */
    public Object mo3151() {
        return (C3521) this.f11943;
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public void m6824(C4372 c4372) {
        ExecutorC2748 executorC2748 = (ExecutorC2748) this.f11941;
        ʽ r1 = (ʽ) this.f11943;
        int i = c4372.f16230;
        if (i == 0) {
            executorC2748.execute(new RunnableC2689(r1, c4372.f16231, 22, false));
        } else {
            executorC2748.execute(new RunnableC0114(i, 3, r1));
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public void m6825(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6825(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public void m6826(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte and 32-byte AES keys are supported", Integer.valueOf(i)));
        }
        this.f11943 = Integer.valueOf(i);
    }

    @Override // p456.InterfaceC5379
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public void mo6827(byte[] bArr) {
        try {
            ((Mac) this.f11941).init(new SecretKeySpec(bArr, (String) this.f11943));
        } catch (InvalidKeyException e) {
            throw new Exception(e);
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C3269 m6828() {
        Integer num = (Integer) this.f11943;
        if (num == null) {
            throw new GeneralSecurityException("Key size is not set");
        }
        if (((C3261) this.f11941) != null) {
            return new C3269(num.intValue(), (C3261) this.f11941);
        }
        throw new GeneralSecurityException("Variant is not set");
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public void m6829(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (((Map) this.f11943)) {
            hashMap = new HashMap((Map) this.f11943);
        }
        synchronized (((Map) this.f11941)) {
            hashMap2 = new HashMap((Map) this.f11941);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                entry.getKey().getClass();
                throw new ClassCastException();
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C3032) entry2.getKey()).m6578(new ApiException(status));
            }
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C3304 m6830(Long l) {
        ReentrantLock reentrantLock = (ReentrantLock) this.f11943;
        reentrantLock.lock();
        try {
            return (C3304) ((HashMap) this.f11941).get(l);
        } finally {
            reentrantLock.unlock();
        }
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public void m6831(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, View view, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6831(abstractComponentCallbacksC3123, view, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public void m6832(String str, InterfaceC4202 interfaceC4202) {
        C1666 c1666 = (C1666) this.f11943;
        synchronized (c1666.f6770) {
            if (c1666.f6771.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            c1666.f6771.put(str, interfaceC4202);
        }
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public void m6833(C4807 c4807) {
        HashMap hashMap = (HashMap) this.f11943;
        if (c4807 == null) {
            throw new NullPointerException("primitive constructor must be non-null");
        }
        C4798 c4798 = new C4798(c4807.f18071, c4807.f18070);
        if (!hashMap.containsKey(c4798)) {
            hashMap.put(c4798, c4807);
            return;
        }
        C4807 c48072 = (C4807) hashMap.get(c4798);
        if (c48072.equals(c4807) && c4807.equals(c48072)) {
            return;
        }
        throw new GeneralSecurityException("Attempt to register non-equal PrimitiveConstructor object for already existing object of type: " + c4798);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public void m6834(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6834(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public void m6835(C4717 c4717) {
        ((HashSet) this.f11943).add(c4717);
        if (((C4717) this.f11941) != null) {
            return;
        }
        this.f11941 = c4717;
        C4716 mo9052 = c4717.f17832.mo9052();
        c4717.f17818 = mo9052;
        HandlerC4732 handlerC4732 = c4717.f17834;
        String str = AbstractC3712.f14481;
        mo9052.getClass();
        handlerC4732.getClass();
        handlerC4732.obtainMessage(1, new C4731(C4991.f18644.getAndIncrement(), true, SystemClock.elapsedRealtime(), mo9052)).sendToTarget();
    }

    @Override // p366.InterfaceC4474
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public void mo6836(Bitmap bitmap, InterfaceC3396 interfaceC3396) {
        IOException iOException = ((C1743) this.f11941).f7101;
        if (iOException != null) {
            if (bitmap == null) {
                throw iOException;
            }
            interfaceC3396.mo7284(bitmap);
            throw iOException;
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public void m6837(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        C3085 c3085 = (C3085) this.f11943;
        AbstractActivityC4410 abstractActivityC4410 = c3085.f11729.f11849;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c3085.f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6837(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // p366.InterfaceC4474
    /* renamed from: ـˆ, reason: contains not printable characters */
    public void mo6838() {
        C4462 c4462 = (C4462) this.f11943;
        synchronized (c4462) {
            c4462.f16697 = c4462.f16698.length;
        }
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public void m6839() {
        if (!((C1666) this.f11943).f6774) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        C4205 c4205 = (C4205) this.f11941;
        if (c4205 == null) {
            c4205 = new C4205(this);
        }
        this.f11941 = c4205;
        try {
            C0167.class.getDeclaredConstructor(null);
            C4205 c42052 = (C4205) this.f11941;
            if (c42052 != null) {
                ((LinkedHashSet) c42052.f15647).add(C0167.class.getName());
            }
        } catch (NoSuchMethodException e) {
            throw new IllegalArgumentException("Class " + C0167.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e);
        }
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public InterfaceC4202 m6840() {
        InterfaceC4202 interfaceC4202;
        C1666 c1666 = (C1666) this.f11943;
        synchronized (c1666.f6770) {
            Iterator it = c1666.f6771.entrySet().iterator();
            do {
                interfaceC4202 = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str = (String) entry.getKey();
                InterfaceC4202 interfaceC42022 = (InterfaceC4202) entry.getValue();
                if (AbstractC2444.m5562(str, "androidx.lifecycle.internal.SavedStateHandlesProvider")) {
                    interfaceC4202 = interfaceC42022;
                }
            } while (interfaceC4202 == null);
        }
        return interfaceC4202;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public void m6841(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6841(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // p275.InterfaceC3511
    /* renamed from: ٴﹶ */
    public boolean mo3152(CharSequence charSequence, int i, int i2, C3501 c3501) {
        if ((c3501.f13814 & 4) > 0) {
            return true;
        }
        if (((C3521) this.f11943) == null) {
            this.f11943 = new C3521(charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence));
        }
        ((ⁱˊ) this.f11941).getClass();
        ((C3521) this.f11943).setSpan(new C3515(c3501), i, i2, 33);
        return true;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public void m6842(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6842(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public C3432 m6843(C3232 c3232) {
        C3432 m5898;
        synchronized (this.f11941) {
            m5898 = ((C2640) this.f11943).m5898(c3232);
        }
        return m5898;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public void m6844(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6844(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public void m6845(AbstractC2228 abstractC2228) {
        ﹳٴ r0 = (ﹳٴ) this.f11943;
        ((ActionMode.Callback) r0.ʽʽ).onDestroyActionMode(r0.ʽﹳ(abstractC2228));
        LayoutInflaterFactory2C4430 layoutInflaterFactory2C4430 = (LayoutInflaterFactory2C4430) this.f11941;
        if (layoutInflaterFactory2C4430.f16525 != null) {
            layoutInflaterFactory2C4430.f16530.getDecorView().removeCallbacks(layoutInflaterFactory2C4430.f16503);
        }
        if (layoutInflaterFactory2C4430.f16502 != null) {
            C2798 c2798 = layoutInflaterFactory2C4430.f16496;
            if (c2798 != null) {
                c2798.m6229();
            }
            C2798 m6281 = AbstractC2823.m6281(layoutInflaterFactory2C4430.f16502);
            m6281.m6230(0.0f);
            layoutInflaterFactory2C4430.f16496 = m6281;
            m6281.m6227(new C4433(2, this));
        }
        layoutInflaterFactory2C4430.f16534 = null;
        ViewGroup viewGroup = layoutInflaterFactory2C4430.f16523;
        WeakHashMap weakHashMap = AbstractC2823.f10603;
        AbstractC2780.m6186(viewGroup);
        layoutInflaterFactory2C4430.m8966();
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public ComponentCallbacks2C0236 m6846(Context context, ComponentCallbacks2C0238 componentCallbacks2C0238, C0184 c0184, C3085 c3085, boolean z) {
        AbstractC1746.m4704();
        AbstractC1746.m4704();
        HashMap hashMap = (HashMap) this.f11943;
        ComponentCallbacks2C0236 componentCallbacks2C0236 = (ComponentCallbacks2C0236) hashMap.get(c0184);
        if (componentCallbacks2C0236 != null) {
            return componentCallbacks2C0236;
        }
        C3552 c3552 = new C3552(c0184);
        ⁱˊ r2 = (ⁱˊ) this.f11941;
        ˆʾ r3 = new ˆʾ(this, c3085);
        r2.getClass();
        ComponentCallbacks2C0236 componentCallbacks2C02362 = new ComponentCallbacks2C0236(componentCallbacks2C0238, c3552, r3, context);
        hashMap.put(c0184, componentCallbacks2C02362);
        c3552.mo7498(new C3543(this, c0184));
        if (z) {
            componentCallbacks2C02362.mo1160();
        }
        return componentCallbacks2C02362;
    }

    @Override // p208.InterfaceC2954
    /* renamed from: ᵎﹶ */
    public void mo6489(IOException iOException) {
        try {
            ((InterfaceC3826) this.f11943).mo7342(iOException);
        } catch (Throwable th) {
            AbstractC3798.m7971(th);
            th.printStackTrace();
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public void m6847(Object obj, String str) {
        ((ArrayList) this.f11943).add(AbstractC1220.m3795(str, "=", String.valueOf(obj)));
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public void m6848(int i, Bundle bundle) {
        Locale locale = Locale.US;
        String str = "Analytics listener received message. ID: " + i + ", Extras: " + bundle;
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        String string = bundle.getString("name");
        if (string != null) {
            Bundle bundle2 = bundle.getBundle("params");
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            ٴʼ r0 = "clx".equals(bundle2.getString("_o")) ? (ٴʼ) this.f11943 : (ˑﹳ) this.f11941;
            if (r0 == null) {
                return;
            }
            r0.m6379(string, bundle2);
        }
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public void m6849(Exception exc, boolean z) {
        this.f11941 = null;
        HashSet hashSet = (HashSet) this.f11943;
        AbstractC0993 m3264 = AbstractC0993.m3264(hashSet);
        hashSet.clear();
        C0982 listIterator = m3264.listIterator(0);
        while (listIterator.hasNext()) {
            C4717 c4717 = (C4717) listIterator.next();
            c4717.getClass();
            c4717.m9466(z ? 1 : 3, exc);
        }
    }

    @Override // p456.InterfaceC5379
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public void mo6850(byte b) {
        ((Mac) this.f11941).update(b);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean m6851(C3232 c3232) {
        boolean containsKey;
        synchronized (this.f11941) {
            containsKey = ((C2640) this.f11943).f10024.containsKey(c3232);
        }
        return containsKey;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public void m6852(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        C3085 c3085 = (C3085) this.f11943;
        AbstractActivityC4410 abstractActivityC4410 = c3085.f11729.f11849;
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = c3085.f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6852(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // p311.InterfaceC3838
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Object mo6853(C3821 c3821) {
        Executor executor = (Executor) this.f11941;
        return executor == null ? c3821 : new C3827(executor, c3821);
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public void m6854(Long l) {
        ReentrantLock reentrantLock = (ReentrantLock) this.f11943;
        reentrantLock.lock();
        try {
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // p254.InterfaceC3341
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void mo6855(C3724 c3724, InterfaceC2646 interfaceC2646, C3339 c3339) {
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public void m6856(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123, boolean z) {
        AbstractComponentCallbacksC3123 abstractComponentCallbacksC31232 = ((C3085) this.f11943).f11758;
        if (abstractComponentCallbacksC31232 != null) {
            abstractComponentCallbacksC31232.m6805().f11724.m6856(abstractComponentCallbacksC3123, true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.f11941).iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (!z) {
                throw null;
            }
            throw null;
        }
    }

    @Override // p220.InterfaceC3037
    /* renamed from: ﾞʻ */
    public C3029 mo6579(Object obj) {
        Boolean bool = (Boolean) obj;
        C4894 c4894 = (C4894) this.f11941;
        if (bool.booleanValue()) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
            boolean booleanValue = bool.booleanValue();
            C1102 c1102 = c4894.f18260;
            if (booleanValue) {
                ((C3032) c1102.f4301).m6577(null);
                return ((C3029) this.f11943).m6569(c4894.f18254.f8651, new ʽ(14, this));
            }
            c1102.getClass();
            throw new IllegalStateException("An invalid data collection token was used.");
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        C3194 c3194 = c4894.f18256;
        Iterator it = C3194.m7019(((File) c3194.f12213).listFiles(C4894.f18246)).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
        C3194 c31942 = ((C3195) c4894.f18252.f18053).f12227;
        C3195.m7030(C3194.m7019(((File) c31942.f12219).listFiles()));
        C3195.m7030(C3194.m7019(((File) c31942.f12216).listFiles()));
        C3195.m7030(C3194.m7019(((File) c31942.f12217).listFiles()));
        c4894.f18259.m6577(null);
        return ᵎ.ᵔᵢ((Object) null);
    }

    @Override // p456.InterfaceC5379
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public byte[] mo6857() {
        return ((Mac) this.f11941).doFinal();
    }
}
