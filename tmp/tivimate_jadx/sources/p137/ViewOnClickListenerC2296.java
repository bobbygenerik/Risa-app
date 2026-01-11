package p137;

import android.content.Context;
import android.view.View;
import android.view.Window;
import p353.C4327;

/* renamed from: ˉˆ.ـʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC2296 implements View.OnClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4327 f8976;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C2286 f8977;

    /* JADX WARN: Type inference failed for: r0v0, types: [ᵔʾ.ﹳٴ, java.lang.Object] */
    public ViewOnClickListenerC2296(C2286 c2286) {
        this.f8977 = c2286;
        Context context = c2286.f8955.getContext();
        CharSequence charSequence = c2286.f8953;
        ?? obj = new Object();
        obj.f16057 = 4096;
        obj.f16059 = 4096;
        obj.f16064 = null;
        obj.f16055 = null;
        obj.f16060 = false;
        obj.f16056 = false;
        obj.f16051 = 16;
        obj.f16050 = context;
        obj.f16063 = charSequence;
        this.f8976 = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C2286 c2286 = this.f8977;
        Window.Callback callback = c2286.f8950;
        if (callback == null || !c2286.f8956) {
            return;
        }
        callback.onMenuItemSelected(0, this.f8976);
    }
}
