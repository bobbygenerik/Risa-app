package p296;

import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import com.google.android.gms.common.api.GoogleApiActivity;

/* renamed from: ٴﾞ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class DialogInterfaceOnClickListenerC3671 implements DialogInterface.OnClickListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f14358;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f14359;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Intent f14360;

    public /* synthetic */ DialogInterfaceOnClickListenerC3671(Intent intent, Object obj, int i) {
        this.f14359 = i;
        this.f14360 = intent;
        this.f14358 = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                m7695();
            } catch (ActivityNotFoundException e) {
                if (true == Build.FINGERPRINT.contains("generic")) {
                }
            }
        } finally {
            dialogInterface.dismiss();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [ﹳˊ.ˑﹳ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7695() {
        switch (this.f14359) {
            case 0:
                Intent intent = this.f14360;
                if (intent != null) {
                    ((GoogleApiActivity) this.f14358).startActivityForResult(intent, 2);
                    return;
                }
                return;
            default:
                Intent intent2 = this.f14360;
                if (intent2 != null) {
                    this.f14358.m9665(intent2, 2);
                    return;
                }
                return;
        }
    }
}
