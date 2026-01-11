package p405;

import com.parse.ٴʼ;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p003.C0778;
import p071.C1631;
import p277.C3529;
import p277.C3537;
import p277.InterfaceC3534;
import p366.C4473;
import p404.C4776;
import p404.C4777;
import p404.C4788;
import p404.C4797;
import p404.C4803;
import p404.C4807;
import p404.InterfaceC4786;
import ﹳˋ.ʽʽ;

/* renamed from: ﹳʾ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4822 implements InterfaceC4786 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f18109;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4822 f18108 = new C4822(0);

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final C4822 f18106 = new C4822(1);

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final C4807 f18107 = new C4807(C4777.class, InterfaceC3534.class, new C4473(24));

    public /* synthetic */ C4822(int i) {
        this.f18109 = i;
    }

    @Override // p404.InterfaceC4786
    /* renamed from: ʽ */
    public final Object mo6541(ٴʼ r7, C4797 c4797, C0778 c0778) {
        C1631 c1631;
        List list;
        C1631 c16312;
        List arrayList;
        switch (this.f18109) {
            case 0:
                C3537 c3537 = r7.ﹳـ();
                HashMap hashMap = new HashMap();
                for (int i = 0; i < ((List) r7.ʽʽ).size(); i++) {
                    C3537 c35372 = r7.ᵔٴ(i);
                    if (c35372.f13882.equals(C3529.f13869)) {
                        InterfaceC4820 interfaceC4820 = (InterfaceC4820) c0778.m2821(c35372);
                        ʽʽ r2 = c35372.f13883;
                        if (r2 instanceof AbstractC4823) {
                            c1631 = ((AbstractC4823) r2).mo9624();
                        } else {
                            if (!(r2 instanceof C4777)) {
                                throw new GeneralSecurityException("Cannot get output prefix for key of class " + r2.getClass().getName() + " with parameters " + r2.ˉˆ());
                            }
                            c1631 = ((C4777) r2).f18019;
                        }
                        byte[] bArr = c1631.f6496;
                        if (bArr.length != 0 && bArr.length != 5) {
                            throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
                        }
                        if (hashMap.containsKey(c1631)) {
                            list = (List) hashMap.get(c1631);
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            hashMap.put(c1631, arrayList2);
                            list = arrayList2;
                        }
                        list.add(interfaceC4820);
                    }
                }
                return new Object();
            default:
                HashMap hashMap2 = new HashMap();
                for (int i2 = 0; i2 < ((List) r7.ʽʽ).size(); i2++) {
                    C3537 c35373 = r7.ᵔٴ(i2);
                    if (c35373.f13882.equals(C3529.f13869)) {
                        InterfaceC3534 interfaceC3534 = (InterfaceC3534) c0778.m2821(c35373);
                        ʽʽ r4 = c35373.f13883;
                        if (r4 instanceof AbstractC4823) {
                            c16312 = ((AbstractC4823) r4).mo9624();
                        } else {
                            if (!(r4 instanceof C4777)) {
                                throw new GeneralSecurityException("Cannot get output prefix for key of class " + r4.getClass().getName() + " with parameters " + r4.ˉˆ());
                            }
                            c16312 = ((C4777) r4).f18019;
                        }
                        C4814 c4814 = new C4814(interfaceC3534, c35373.f13880);
                        byte[] bArr2 = c16312.f6496;
                        if (bArr2.length != 0 && bArr2.length != 5) {
                            throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
                        }
                        if (hashMap2.containsKey(c16312)) {
                            arrayList = (List) hashMap2.get(c16312);
                        } else {
                            arrayList = new ArrayList();
                            hashMap2.put(c16312, arrayList);
                        }
                        arrayList.add(c4814);
                    }
                }
                if (!c4797.f18046.isEmpty()) {
                    C4803 c4803 = (C4803) C4788.f18032.f18033.get();
                    if (c4803 == null) {
                        c4803 = C4788.f18031;
                    }
                    c4803.getClass();
                }
                new C4814((InterfaceC3534) c0778.m2821(r7.ﹳـ()), r7.ﹳـ().f13880);
                new C4776(hashMap2);
                return new Object();
        }
    }

    @Override // p404.InterfaceC4786
    /* renamed from: ⁱˊ */
    public final Class mo6542() {
        switch (this.f18109) {
            case 0:
                return InterfaceC4820.class;
            default:
                return InterfaceC3534.class;
        }
    }

    @Override // p404.InterfaceC4786
    /* renamed from: ﹳٴ */
    public final Class mo6543() {
        switch (this.f18109) {
            case 0:
                return InterfaceC4820.class;
            default:
                return InterfaceC3534.class;
        }
    }
}
