package p183;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.support.v4.media.session.ⁱˊ;
import com.bumptech.glide.ʽ;
import com.google.crypto.tink.shaded.protobuf.AbstractC0744;
import com.google.crypto.tink.shaded.protobuf.C0713;
import com.hierynomus.smbj.common.SMBRuntimeException;
import com.parse.ٴʼ;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyStoreException;
import java.security.ProviderException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import p007.InterfaceC0835;
import p033.AbstractC1179;
import p035.AbstractC1220;
import p062.C1539;
import p062.C1549;
import p062.C1573;
import p062.C1588;
import p062.InterfaceC1559;
import p075.InterfaceC1653;
import p090.InterfaceC1824;
import p106.C1936;
import p106.C1937;
import p106.C1938;
import p126.InterfaceC2139;
import p137.AbstractC2305;
import p277.AbstractC3528;
import p277.C3529;
import p277.C3531;
import p277.C3532;
import p277.C3537;
import p330.C4111;
import p330.C4134;
import p330.C4137;
import p330.C4145;
import p330.C4162;
import p330.C4165;
import p330.C4171;
import p330.EnumC4126;
import p330.EnumC4150;
import p330.EnumC4167;
import p336.C4213;
import p343.InterfaceC4267;
import p359.InterfaceC4355;
import p359.InterfaceC4357;
import p366.C4483;
import p366.C4486;
import p404.AbstractC4796;
import p404.AbstractC4804;
import p404.C4784;
import p404.C4790;
import p404.C4797;
import p404.C4799;
import p404.C4810;
import p404.C4811;
import p413.C4912;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import p462.InterfaceC5417;
import p462.InterfaceC5418;
import ʼ.ᵎﹶ;
import ˋⁱ.ﾞᴵ;
import ᵢ.ﹳٴ;
import ﹳˋ.ʽʽ;

/* renamed from: ˋٴ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2760 implements InterfaceC5418, InterfaceC1653 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f10511;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f10512;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f10513;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Object f10514;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Object f10515;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Object f10516;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f10517;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f10518;

    public C2760() {
        this.f10512 = 2;
        this.f10517 = null;
        this.f10511 = null;
        this.f10513 = null;
        this.f10518 = null;
        this.f10515 = null;
        this.f10516 = null;
    }

    public C2760(String str) {
        this.f10512 = 0;
        ﾞᴵ r0 = SMBRuntimeException.f3099;
        this.f10517 = AbstractC5359.m10750(C2760.class);
        this.f10511 = str;
        this.f10513 = r0;
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f10518 = reentrantLock;
        this.f10515 = reentrantLock.newCondition();
    }

    public /* synthetic */ C2760(InterfaceC4267 interfaceC4267, InterfaceC4267 interfaceC42672, InterfaceC4267 interfaceC42673, InterfaceC4267 interfaceC42674, InterfaceC4267 interfaceC42675, InterfaceC4267 interfaceC42676, InterfaceC4267 interfaceC42677, int i) {
        this.f10512 = i;
        this.f10517 = interfaceC4267;
        this.f10511 = interfaceC42672;
        this.f10513 = interfaceC42673;
        this.f10518 = interfaceC42674;
        this.f10515 = interfaceC42675;
        this.f10516 = interfaceC42676;
        this.f10514 = interfaceC42677;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static byte[] m6156(Context context, String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("keysetName cannot be null");
        }
        Context applicationContext = context.getApplicationContext();
        try {
            String string = (str2 == null ? PreferenceManager.getDefaultSharedPreferences(applicationContext) : applicationContext.getSharedPreferences(str2, 0)).getString(str, null);
            if (string == null) {
                return null;
            }
            return ᵎﹶ.ʼᐧ(string);
        } catch (ClassCastException | IllegalArgumentException unused) {
            throw new CharConversionException(AbstractC2305.m5378("can't read keyset; the pref value ", str, " is not a valid hex string"));
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static C3529 m6157(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        try {
            C4111 m8361 = C4111.m8361(byteArrayInputStream, C0713.m2526());
            byteArrayInputStream.close();
            return new C3529(3, (C4162) ((C4111) ٴʼ.ˆﾞ(m8361).ᴵˊ).m2562());
        } catch (Throwable th) {
            byteArrayInputStream.close();
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [ʾٴ.ⁱˊ, java.lang.Object] */
    @Override // p343.InterfaceC4267
    public Object get() {
        switch (this.f10512) {
            case 1:
                return new C1573((C4213) ((InterfaceC4267) this.f10517).get(), (C1588) ((InterfaceC4267) this.f10511).get(), (InterfaceC1559) ((InterfaceC4267) this.f10513).get(), (C1549) ((InterfaceC4267) this.f10518).get(), (InterfaceC1824) ((InterfaceC4267) this.f10515).get(), (C1539) ((InterfaceC5417) this.f10516).get(), (InterfaceC2139) ((InterfaceC4267) this.f10514).get());
            default:
                Context context = (Context) ((InterfaceC4267) this.f10517).get();
                C4912 c4912 = (C4912) ((InterfaceC4267) this.f10511).get();
                InterfaceC4357 interfaceC4357 = (InterfaceC4357) ((InterfaceC4267) this.f10513).get();
                ٴʼ r3 = (ٴʼ) ((ﹳٴ) this.f10518).get();
                Executor executor = (Executor) ((InterfaceC4267) this.f10515).get();
                InterfaceC0835 interfaceC0835 = (InterfaceC0835) ((InterfaceC4267) this.f10516).get();
                C4483 c4483 = new C4483(5);
                C4486 c4486 = new C4486(5);
                InterfaceC4355 interfaceC4355 = (InterfaceC4355) ((InterfaceC4267) this.f10514).get();
                ?? obj = new Object();
                obj.f6488 = context;
                obj.f6487 = c4912;
                obj.f6482 = interfaceC4357;
                obj.f6483 = r3;
                obj.f6484 = executor;
                obj.f6489 = interfaceC0835;
                obj.f6485 = c4483;
                obj.f6486 = c4486;
                obj.f6481 = interfaceC4355;
                return obj;
        }
    }

    public String toString() {
        switch (this.f10512) {
            case 0:
                return (String) this.f10511;
            default:
                return super.toString();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [ˆـ.ʽ, java.lang.Object] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C3529 m6158(byte[] bArr) {
        try {
            this.f10515 = new Object().m4894((String) this.f10518);
            try {
                return new C3529(3, (C4162) ((C4111) ⁱˊ.ᵔʾ(new C3529(1, new ByteArrayInputStream(bArr)), (C1937) this.f10515, new byte[0]).ᴵˊ).m2562());
            } catch (IOException | GeneralSecurityException e) {
                try {
                    return m6157(bArr);
                } catch (IOException unused) {
                    throw e;
                }
            }
        } catch (GeneralSecurityException | ProviderException e2) {
            try {
                return m6157(bArr);
            } catch (IOException unused2) {
                throw e2;
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object m6159(long j, TimeUnit timeUnit) {
        Condition condition = (Condition) this.f10515;
        String str = (String) this.f10511;
        InterfaceC5360 interfaceC5360 = (InterfaceC5360) this.f10517;
        ReentrantLock reentrantLock = (ReentrantLock) this.f10518;
        reentrantLock.lock();
        try {
            try {
                Throwable th = (Throwable) this.f10514;
                if (th != null) {
                    throw th;
                }
                AbstractC1179 abstractC1179 = (AbstractC1179) this.f10516;
                if (abstractC1179 != null) {
                    reentrantLock.unlock();
                    return abstractC1179;
                }
                interfaceC5360.mo4098(str, "Awaiting << {} >>");
                if (j == 0) {
                    while (((AbstractC1179) this.f10516) == null && ((Throwable) this.f10514) == null) {
                        condition.await();
                    }
                } else if (!condition.await(j, timeUnit)) {
                    reentrantLock.unlock();
                    return null;
                }
                Throwable th2 = (Throwable) this.f10514;
                if (th2 != null) {
                    interfaceC5360.mo4097(str, th2, "<< {} >> woke to: {}");
                    throw ((Throwable) this.f10514);
                }
                AbstractC1179 abstractC11792 = (AbstractC1179) this.f10516;
                reentrantLock.unlock();
                return abstractC11792;
            } catch (InterruptedException e) {
                throw ((ﾞᴵ) this.f10513).ᵢˏ(e);
            }
        } catch (Throwable th3) {
            reentrantLock.unlock();
            throw th3;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C3529 m6160() {
        int i;
        EnumC4126 enumC4126;
        C3529 c3529 = (C3529) this.f10516;
        if (c3529 == null) {
            throw new GeneralSecurityException("cannot read or generate keyset");
        }
        AbstractC3528 abstractC3528 = (AbstractC3528) c3529.f13872;
        if (abstractC3528 == null) {
            try {
                abstractC3528 = ʽ.יـ((abstractC3528 instanceof C4784 ? (C4171) ((C4784) abstractC3528).f18028.f18034 : (C4171) ((C4790) C4810.f18077.m9615(abstractC3528)).f18034).m2700());
            } catch (GeneralSecurityException e) {
                throw new RuntimeException("Parsing parameters failed in getProto(). You probably want to call some Tink register function for " + abstractC3528, e);
            }
        }
        ArrayList arrayList = new ArrayList();
        C4797 c4797 = C4797.f18045;
        C3531 c3531 = new C3531(abstractC3528);
        C3532 c3532 = C3532.f13878;
        c3531.f13875 = c3532;
        boolean z = true;
        c3531.f13877 = true;
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList.get(i3);
            i3++;
            ((C3531) obj).f13877 = false;
        }
        arrayList.add(c3531);
        C4162 m8360 = C4111.m8360();
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i4 = 0; i4 < arrayList.size() - 1; i4++) {
            if (((C3531) arrayList.get(i4)).f13875 == c3532 && ((C3531) arrayList.get(i4 + 1)).f13875 != c3532) {
                throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
            }
        }
        HashSet hashSet = new HashSet();
        int size2 = arrayList.size();
        int i5 = 0;
        Integer num = null;
        while (i5 < size2) {
            Object obj2 = arrayList.get(i5);
            i5++;
            C3531 c35312 = (C3531) obj2;
            c35312.getClass();
            AbstractC3528 abstractC35282 = c35312.f13876;
            boolean z2 = z;
            C3532 c35322 = c35312.f13875;
            if (c35322 == null) {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
            if (c35322 == c3532) {
                i = i2;
                while (true) {
                    if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                        break;
                    }
                    int i6 = AbstractC4804.f18064;
                    i = i2;
                    while (i == 0) {
                        byte[] m9578 = AbstractC4796.m9578(4);
                        i = (m9578[3] & 255) | ((m9578[i2] & 255) << 24) | ((m9578[z2 ? 1 : 0] & 255) << 16) | ((m9578[2] & 255) << 8);
                    }
                }
            } else {
                i = i2;
            }
            if (hashSet.contains(Integer.valueOf(i))) {
                throw new GeneralSecurityException(AbstractC1220.m3773(i, "Id ", " is used twice in the keyset"));
            }
            hashSet.add(Integer.valueOf(i));
            ʽʽ m9619 = C4811.f18079.m9619(abstractC35282, abstractC35282.mo6546() ? Integer.valueOf(i) : null);
            boolean z3 = c35312.f13877;
            C3529 c35292 = C3529.f13869;
            C3537 c3537 = new C3537(m9619, c35292, i, z3);
            C4799 c4799 = (C4799) C4810.f18077.m9614(m9619);
            Integer num2 = (Integer) c4799.f18052;
            if (num2 != null && num2.intValue() != i) {
                throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
            }
            if (c35292.equals(c35292)) {
                enumC4126 = EnumC4126.f15559;
            } else if (C3529.f13870.equals(c35292)) {
                enumC4126 = EnumC4126.f15560;
            } else {
                if (!C3529.f13871.equals(c35292)) {
                    throw new IllegalStateException("Unknown key status");
                }
                enumC4126 = EnumC4126.f15564;
            }
            C4145 m8497 = C4165.m8497();
            ArrayList arrayList3 = arrayList;
            C4134 m8425 = C4137.m8425();
            C3532 c35323 = c3532;
            String str = (String) c4799.f18050;
            m8425.m2486();
            HashSet hashSet2 = hashSet;
            C4137.m8427((C4137) m8425.f2977, str);
            AbstractC0744 abstractC0744 = (AbstractC0744) c4799.f18049;
            m8425.m2486();
            C4137.m8424((C4137) m8425.f2977, abstractC0744);
            EnumC4167 enumC4167 = (EnumC4167) c4799.f18051;
            m8425.m2486();
            C4137.m8426((C4137) m8425.f2977, enumC4167);
            m8497.m2486();
            C4165.m8498((C4165) m8497.f2977, (C4137) m8425.m2485());
            m8497.m2486();
            C4165.m8496((C4165) m8497.f2977, enumC4126);
            m8497.m2486();
            C4165.m8494((C4165) m8497.f2977, i);
            EnumC4150 enumC4150 = (EnumC4150) c4799.f18054;
            m8497.m2486();
            C4165.m8495((C4165) m8497.f2977, enumC4150);
            C4165 c4165 = (C4165) m8497.m2485();
            m8360.m2486();
            C4111.m8358((C4111) m8360.f2977, c4165);
            if (c35312.f13877) {
                if (num != null) {
                    throw new GeneralSecurityException("Two primaries were set");
                }
                num = Integer.valueOf(i);
            }
            arrayList2.add(c3537);
            z = z2 ? 1 : 0;
            arrayList = arrayList3;
            c3532 = c35323;
            hashSet = hashSet2;
            i2 = 0;
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        int intValue = num.intValue();
        m8360.m2486();
        C4111.m8362((C4111) m8360.f2977, intValue);
        C4111 c4111 = (C4111) m8360.m2485();
        if (c4111.m8363() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        ٴʼ r2 = new ٴʼ(c4111, arrayList2, c4797);
        Context context = (Context) this.f10517;
        String str2 = (String) this.f10511;
        C4790 c4790 = new C4790(context, str2, (String) this.f10513);
        C1937 c1937 = (C1937) this.f10515;
        try {
            if (c1937 != null) {
                ⁱˊ.ﹳᐧ(r2, c4790, c1937, new byte[0]);
            } else if (!((SharedPreferences.Editor) c4790.f18036).putString(str2, ᵎﹶ.ﹳᐧ(c4111.m2700())).commit()) {
                throw new IOException("Failed to write to SharedPreferences");
            }
            return new C3529(3, (C4162) c4111.m2562());
        } catch (IOException e2) {
            throw new GeneralSecurityException(e2);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public synchronized C1938 m6161() {
        C1938 c1938;
        try {
            if (((String) this.f10511) == null) {
                throw new IllegalArgumentException("keysetName cannot be null");
            }
            synchronized (C1938.f7698) {
                try {
                    byte[] m6156 = m6156((Context) this.f10517, (String) this.f10511, (String) this.f10513);
                    if (m6156 == null) {
                        if (((String) this.f10518) != null) {
                            this.f10515 = m6162();
                        }
                        this.f10514 = m6160();
                    } else if (((String) this.f10518) != null) {
                        this.f10514 = m6158(m6156);
                    } else {
                        this.f10514 = m6157(m6156);
                    }
                    c1938 = new C1938(this);
                } finally {
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return c1938;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [ˆـ.ʽ, java.lang.Object] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C1937 m6162() {
        ?? obj = new Object();
        try {
            boolean m4893 = C1936.m4893((String) this.f10518);
            try {
                return obj.m4894((String) this.f10518);
            } catch (GeneralSecurityException | ProviderException e) {
                if (m4893) {
                    return null;
                }
                throw new KeyStoreException(AbstractC2305.m5378("the master key ", (String) this.f10518, " exists but is unusable"), e);
            }
        } catch (GeneralSecurityException | ProviderException e2) {
            return null;
        }
    }
}
