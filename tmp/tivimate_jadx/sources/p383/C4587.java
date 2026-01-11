package p383;

import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.data.InterfaceC0218;
import com.bumptech.glide.load.data.InterfaceC0220;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.List;
import p087.AbstractC1751;
import p238.InterfaceC3203;

/* renamed from: ⁱʼ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4587 implements InterfaceC0220, InterfaceC0218 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f17083;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f17084;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public EnumC0235 f17085;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public List f17086;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f17087;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC3203 f17088;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC0218 f17089;

    public C4587(ArrayList arrayList, InterfaceC3203 interfaceC3203) {
        this.f17088 = interfaceC3203;
        if (arrayList.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f17084 = arrayList;
        this.f17083 = 0;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        this.f17087 = true;
        ArrayList arrayList = this.f17084;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((InterfaceC0220) obj).cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0218
    /* renamed from: ʽ */
    public final void mo1107(Exception exc) {
        List list = this.f17086;
        AbstractC1751.m4711(list, "Argument must not be null");
        list.add(exc);
        m9133();
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0218
    /* renamed from: ˈ */
    public final void mo1108(Object obj) {
        if (obj != null) {
            this.f17089.mo1108(obj);
        } else {
            m9133();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        return ((InterfaceC0220) this.f17084.get(0)).mo1111();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9133() {
        if (this.f17087) {
            return;
        }
        if (this.f17083 < this.f17084.size() - 1) {
            this.f17083++;
            mo1114(this.f17085, this.f17089);
        } else {
            AbstractC1751.m4712(this.f17086);
            this.f17089.mo1107(new GlideException("Fetch failed", new ArrayList(this.f17086)));
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        List list = this.f17086;
        if (list != null) {
            this.f17088.mo3014(list);
        }
        this.f17086 = null;
        ArrayList arrayList = this.f17084;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((InterfaceC0220) obj).mo1112();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        return ((InterfaceC0220) this.f17084.get(0)).mo1113();
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        this.f17085 = enumC0235;
        this.f17089 = interfaceC0218;
        this.f17086 = (List) this.f17088.mo3016();
        ((InterfaceC0220) this.f17084.get(this.f17083)).mo1114(enumC0235, this);
        if (this.f17087) {
            cancel();
        }
    }
}
