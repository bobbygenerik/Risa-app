package p319;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.play_billing.AbstractBinderC0554;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import p088.BinderC1753;
import p088.InterfaceC1754;
import p195.AbstractC2888;
import p296.AbstractC3659;
import p296.InterfaceC3685;

/* renamed from: ᴵˈ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractBinderC3933 extends AbstractBinderC0554 implements InterfaceC3685 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f15213;

    public AbstractBinderC3933(byte[] bArr) {
        super("com.google.android.gms.common.internal.ICertData");
        AbstractC3659.m7686(bArr.length == 25);
        this.f15213 = Arrays.hashCode(bArr);
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public static byte[] m8101(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean equals(Object obj) {
        InterfaceC1754 mo7724;
        if (obj != null && (obj instanceof InterfaceC3685)) {
            try {
                InterfaceC3685 interfaceC3685 = (InterfaceC3685) obj;
                if (interfaceC3685.mo7723() == this.f15213 && (mo7724 = interfaceC3685.mo7724()) != null) {
                    return Arrays.equals(mo8093(), (byte[]) BinderC1753.m4715(mo7724));
                }
            } catch (RemoteException e) {
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f15213;
    }

    @Override // p296.InterfaceC3685
    /* renamed from: ᵎﹶ */
    public final int mo7723() {
        return this.f15213;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractBinderC0554
    /* renamed from: ᵔי */
    public final boolean mo2131(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            InterfaceC1754 mo7724 = mo7724();
            parcel2.writeNoException();
            AbstractC2888.m6388(parcel2, mo7724);
            return true;
        }
        if (i != 2) {
            return false;
        }
        parcel2.writeNoException();
        parcel2.writeInt(this.f15213);
        return true;
    }

    /* renamed from: ᵔٴ */
    public abstract byte[] mo8093();

    @Override // p296.InterfaceC3685
    /* renamed from: ⁱˊ */
    public final InterfaceC1754 mo7724() {
        return new BinderC1753(mo8093());
    }
}
