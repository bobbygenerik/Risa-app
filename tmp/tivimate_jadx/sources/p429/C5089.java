package p429;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;

/* renamed from: ﹶˆ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5089 implements InterfaceC5091 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19181;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC5083 f19182;

    public /* synthetic */ C5089(InterfaceC5083 interfaceC5083, int i) {
        this.f19181 = i;
        this.f19182 = interfaceC5083;
    }

    @Override // p429.InterfaceC5091
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object mo9993(String str) {
        switch (this.f19181) {
            case 0:
                String[] strArr = {"GmsCore_OpenSSL", "AndroidOpenSSL"};
                ArrayList arrayList = new ArrayList();
                int i = 0;
                for (int i2 = 0; i2 < 2; i2++) {
                    Provider provider = Security.getProvider(strArr[i2]);
                    if (provider != null) {
                        arrayList.add(provider);
                    }
                }
                int size = arrayList.size();
                Exception exc = null;
                while (true) {
                    InterfaceC5083 interfaceC5083 = this.f19182;
                    if (i >= size) {
                        return interfaceC5083.mo9002(str, null);
                    }
                    Object obj = arrayList.get(i);
                    i++;
                    try {
                        return interfaceC5083.mo9002(str, (Provider) obj);
                    } catch (Exception e) {
                        if (exc == null) {
                            exc = e;
                        }
                    }
                }
            default:
                String[] strArr2 = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};
                ArrayList arrayList2 = new ArrayList();
                int i3 = 0;
                for (int i4 = 0; i4 < 3; i4++) {
                    Provider provider2 = Security.getProvider(strArr2[i4]);
                    if (provider2 != null) {
                        arrayList2.add(provider2);
                    }
                }
                int size2 = arrayList2.size();
                Exception exc2 = null;
                while (i3 < size2) {
                    Object obj2 = arrayList2.get(i3);
                    i3++;
                    try {
                        return this.f19182.mo9002(str, (Provider) obj2);
                    } catch (Exception e2) {
                        if (exc2 == null) {
                            exc2 = e2;
                        }
                    }
                }
                throw new GeneralSecurityException("No good Provider found.", exc2);
        }
    }
}
