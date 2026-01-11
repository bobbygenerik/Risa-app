package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.internal.measurement.HandlerC0337;
import p137.AbstractC2305;
import p296.AbstractC3659;
import p319.C3930;
import p319.C3936;
import p409.C4844;

@KeepName
/* loaded from: classes.dex */
public class GoogleApiActivity extends Activity implements DialogInterface.OnCancelListener {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final /* synthetic */ int f1716 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f1717 = 0;

    @Override // android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            boolean booleanExtra = getIntent().getBooleanExtra("notify_manager", true);
            this.f1717 = 0;
            setResult(i2, intent);
            if (booleanExtra) {
                C4844 m9652 = C4844.m9652(this);
                if (i2 == -1) {
                    HandlerC0337 handlerC0337 = m9652.f18174;
                    handlerC0337.sendMessage(handlerC0337.obtainMessage(3));
                } else if (i2 == 0) {
                    m9652.m9657(new C3936(13, null), getIntent().getIntExtra("failing_client_id", -1));
                }
            }
        } else if (i == 2) {
            this.f1717 = 0;
            setResult(i2, intent);
        }
        finish();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f1717 = 0;
        setResult(0);
        finish();
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        GoogleApiActivity googleApiActivity;
        super.onCreate(bundle);
        if (bundle != null) {
            this.f1717 = bundle.getInt("resolution");
        }
        if (this.f1717 != 1) {
            Bundle extras = getIntent().getExtras();
            if (extras == null) {
                finish();
                return;
            }
            PendingIntent pendingIntent = (PendingIntent) extras.get("pending_intent");
            Integer num = (Integer) extras.get("error_code");
            if (pendingIntent == null && num == null) {
                finish();
                return;
            }
            if (pendingIntent == null) {
                AbstractC3659.m7687(num);
                C3930.f15206.m8097(this, num.intValue(), this);
                this.f1717 = 1;
                return;
            }
            try {
                googleApiActivity = this;
            } catch (ActivityNotFoundException e) {
                googleApiActivity = this;
            } catch (IntentSender.SendIntentException e2) {
                e = e2;
            }
            try {
                googleApiActivity.startIntentSenderForResult(pendingIntent.getIntentSender(), 1, null, 0, 0, 0);
                googleApiActivity.f1717 = 1;
            } catch (ActivityNotFoundException e3) {
                if (extras.getBoolean("notify_manager", true)) {
                    C4844.m9652(this).m9657(new C3936(22, null), getIntent().getIntExtra("failing_client_id", -1));
                } else {
                    String m5378 = AbstractC2305.m5378("Activity not found while launching ", pendingIntent.toString(), ".");
                    if (Build.FINGERPRINT.contains("generic")) {
                        m5378.concat(" This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store.");
                    }
                }
                googleApiActivity.f1717 = 1;
                finish();
            } catch (IntentSender.SendIntentException e4) {
                e = e4;
                finish();
            }
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("resolution", this.f1717);
        super.onSaveInstanceState(bundle);
    }
}
