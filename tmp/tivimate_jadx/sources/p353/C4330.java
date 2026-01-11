package p353;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import androidx.appcompat.view.menu.ExpandedMenuView;
import p363.C4411;
import p363.C4426;
import p363.DialogInterfaceC4428;

/* renamed from: ᵔʾ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4330 implements InterfaceC4309, AdapterView.OnItemClickListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public MenuC4312 f16096;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Context f16097;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ExpandedMenuView f16098;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C4317 f16099;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public LayoutInflater f16100;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public InterfaceC4316 f16101;

    public C4330(Context context) {
        this.f16097 = context;
        this.f16100 = LayoutInflater.from(context);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        this.f16096.m8730(this.f16099.getItem(i), this, 0);
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʼˎ */
    public final void mo5352(Context context, MenuC4312 menuC4312) {
        if (this.f16097 != null) {
            this.f16097 = context;
            if (this.f16100 == null) {
                this.f16100 = LayoutInflater.from(context);
            }
        }
        this.f16096 = menuC4312;
        C4317 c4317 = this.f16099;
        if (c4317 != null) {
            c4317.notifyDataSetChanged();
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ʽ */
    public final void mo5353(MenuC4312 menuC4312, boolean z) {
        InterfaceC4316 interfaceC4316 = this.f16101;
        if (interfaceC4316 != null) {
            interfaceC4316.mo8744(menuC4312, z);
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˆʾ */
    public final boolean mo5354() {
        return false;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ˈ */
    public final void mo5355() {
        C4317 c4317 = this.f16099;
        if (c4317 != null) {
            c4317.notifyDataSetChanged();
        }
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ٴﹶ */
    public final boolean mo5356(C4329 c4329) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.content.DialogInterface$OnClickListener, ᵔʾ.ˏי, java.lang.Object, ᵔʾ.ٴﹶ, android.content.DialogInterface$OnDismissListener] */
    @Override // p353.InterfaceC4309
    /* renamed from: ᵎﹶ */
    public final boolean mo5357(SubMenuC4310 subMenuC4310) {
        boolean hasVisibleItems = subMenuC4310.hasVisibleItems();
        Context context = subMenuC4310.f15970;
        if (!hasVisibleItems) {
            return false;
        }
        ?? obj = new Object();
        obj.f16019 = subMenuC4310;
        C4426 c4426 = new C4426(context);
        C4330 c4330 = new C4330(c4426.getContext());
        obj.f16018 = c4330;
        c4330.f16101 = obj;
        subMenuC4310.m8731(c4330, context);
        C4330 c43302 = obj.f16018;
        if (c43302.f16099 == null) {
            c43302.f16099 = new C4317(c43302);
        }
        C4317 c4317 = c43302.f16099;
        C4411 c4411 = c4426.f16470;
        c4411.f16409 = c4317;
        c4411.f16416 = obj;
        View view = subMenuC4310.f15959;
        if (view != null) {
            c4411.f16412 = view;
        } else {
            c4411.f16406 = subMenuC4310.f15966;
            c4426.setTitle(subMenuC4310.f15958);
        }
        c4411.f16414 = obj;
        DialogInterfaceC4428 create = c4426.create();
        obj.f16020 = create;
        create.setOnDismissListener(obj);
        WindowManager.LayoutParams attributes = obj.f16020.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        obj.f16020.show();
        InterfaceC4316 interfaceC4316 = this.f16101;
        if (interfaceC4316 == null) {
            return true;
        }
        interfaceC4316.mo8745(subMenuC4310);
        return true;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ᵔᵢ */
    public final void mo5390(InterfaceC4316 interfaceC4316) {
        throw null;
    }

    @Override // p353.InterfaceC4309
    /* renamed from: ⁱˊ */
    public final boolean mo5358(C4329 c4329) {
        return false;
    }
}
