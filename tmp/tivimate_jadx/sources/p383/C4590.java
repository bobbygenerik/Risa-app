package p383;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import java.io.InputStream;

/* renamed from: ⁱʼ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4590 implements InterfaceC4596 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Resources f17097;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f17098;

    public /* synthetic */ C4590(Resources resources, int i) {
        this.f17098 = i;
        this.f17097 = resources;
    }

    @Override // p383.InterfaceC4596
    /* renamed from: ﹳٴ */
    public final InterfaceC4578 mo4901(C4575 c4575) {
        switch (this.f17098) {
            case 0:
                return new C4598(this.f17097, c4575.m9120(Uri.class, AssetFileDescriptor.class));
            case 1:
                return new C4598(this.f17097, c4575.m9120(Uri.class, InputStream.class));
            default:
                return new C4598(this.f17097, C4576.f17066);
        }
    }
}
