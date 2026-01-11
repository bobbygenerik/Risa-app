package p383;

import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import p223.C3056;
import p335.C4208;
import ʿˋ.ʽ;

/* renamed from: ⁱʼ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4582 implements InterfaceC4596 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4582 f17075 = new C4582(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f17076;

    public /* synthetic */ C4582(int i) {
        this.f17076 = i;
    }

    @Override // p383.InterfaceC4596
    /* renamed from: ﹳٴ */
    public final InterfaceC4578 mo4901(C4575 c4575) {
        switch (this.f17076) {
            case 0:
                return C4576.f17066;
            case 1:
                return new C4208(1, new C4579(0));
            case 2:
                return new C4208(1, new C4579(1));
            case 3:
                return new C4576(1);
            case 4:
                return new ʽ(c4575.m9120(Uri.class, AssetFileDescriptor.class), 4);
            case 5:
                return new ʽ(c4575.m9120(Uri.class, ParcelFileDescriptor.class), 4);
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                return new ʽ(c4575.m9120(Uri.class, InputStream.class), 4);
            default:
                return new C4592(c4575.m9120(C4593.class, InputStream.class));
        }
    }
}
