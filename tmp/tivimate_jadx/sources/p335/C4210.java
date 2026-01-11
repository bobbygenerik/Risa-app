package p335;

import android.util.Log;
import androidx.leanback.widget.ʻٴ;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.InterfaceC0218;
import com.bumptech.glide.load.data.InterfaceC0220;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import p027.C1084;
import p087.AbstractC1751;
import p087.C1741;
import p208.AbstractC2960;
import p208.C2937;
import p208.C2942;
import p208.C2945;
import p208.InterfaceC2947;
import p208.InterfaceC2954;
import p292.C3632;
import p383.C4593;

/* renamed from: ᵎʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4210 implements InterfaceC0220, InterfaceC2954 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C1741 f15659;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2947 f15660;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public AbstractC2960 f15661;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public volatile C3632 f15662;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4593 f15663;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC0218 f15664;

    public C4210(InterfaceC2947 interfaceC2947, C4593 c4593) {
        this.f15660 = interfaceC2947;
        this.f15663 = c4593;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        C3632 c3632 = this.f15662;
        if (c3632 != null) {
            c3632.cancel();
        }
    }

    @Override // p208.InterfaceC2954
    /* renamed from: ʼˎ */
    public final void mo6488(C2942 c2942) {
        AbstractC2960 abstractC2960 = c2942.f11191;
        this.f15661 = abstractC2960;
        if (!c2942.f11185) {
            this.f15664.mo1107(new HttpException(c2942.f11186, null, c2942.f11182));
        } else {
            AbstractC1751.m4711(abstractC2960, "Argument must not be null");
            C1741 c1741 = new C1741(this.f15661.mo4067().mo5804(), abstractC2960.mo4066());
            this.f15659 = c1741;
            this.f15664.mo1108(c1741);
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        return 2;
    }

    @Override // p208.InterfaceC2954
    /* renamed from: ᵎﹶ */
    public final void mo6489(IOException iOException) {
        if (Log.isLoggable("OkHttpFetcher", 3)) {
        }
        this.f15664.mo1107(iOException);
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        try {
            C1741 c1741 = this.f15659;
            if (c1741 != null) {
                c1741.close();
            }
        } catch (IOException unused) {
        }
        AbstractC2960 abstractC2960 = this.f15661;
        if (abstractC2960 != null) {
            abstractC2960.close();
        }
        this.f15664 = null;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        ʻٴ r5 = new ʻٴ(8);
        r5.ʾˋ(this.f15663.m9138());
        for (Map.Entry entry : this.f15663.f17108.mo9136().entrySet()) {
            ((C1084) r5.ᴵᵔ).m3437((String) entry.getKey(), (String) entry.getValue());
        }
        C2945 c2945 = new C2945(r5);
        this.f15664 = interfaceC0218;
        C2937 c2937 = (C2937) this.f15660;
        c2937.getClass();
        this.f15662 = new C3632(c2937, c2945);
        this.f15662.m7610(this);
    }
}
