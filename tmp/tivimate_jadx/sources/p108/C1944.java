package p108;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import java.io.InputStream;
import p223.C3056;
import p383.C4575;
import p383.C4598;
import p383.InterfaceC4578;
import p383.InterfaceC4596;

/* renamed from: ˆᴵ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1944 implements InterfaceC4596 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f7718;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7719;

    public /* synthetic */ C1944(Context context, int i) {
        this.f7719 = i;
        this.f7718 = context;
    }

    @Override // p383.InterfaceC4596
    /* renamed from: ﹳٴ */
    public final InterfaceC4578 mo4901(C4575 c4575) {
        switch (this.f7719) {
            case 0:
                return new C1941(this.f7718, 0);
            case 1:
                return new C1941(this.f7718, 1);
            case 2:
                return new C4598(this.f7718, this);
            case 3:
                return new C4598(this.f7718, this);
            case 4:
                return new C4598(this.f7718, this);
            case 5:
                return new C1941(this.f7718, 2);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new C4598(this.f7718, c4575.m9120(Integer.class, AssetFileDescriptor.class));
            default:
                return new C4598(this.f7718, c4575.m9120(Integer.class, InputStream.class));
        }
    }
}
