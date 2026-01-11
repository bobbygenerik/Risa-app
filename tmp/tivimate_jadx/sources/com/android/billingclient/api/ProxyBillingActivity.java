package com.android.billingclient.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.EnumC0583;
import p027.AbstractC1104;
import p027.C1099;
import p027.C1115;

@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivity extends Activity {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f1594;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ResultReceiver f1595;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f1596;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f1597;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f1598;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f1599;

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00de  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onActivityResult(int r8, int r9, android.content.Intent r10) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.billingclient.api.ProxyBillingActivity.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        PendingIntent pendingIntent;
        super.onCreate(bundle);
        if (bundle != null) {
            AbstractC0542.m2096("ProxyBillingActivity", "Launching Play Store billing flow from savedInstanceState");
            this.f1598 = bundle.getBoolean("send_cancelled_broadcast_if_finished", false);
            if (bundle.containsKey("in_app_message_result_receiver")) {
                this.f1595 = (ResultReceiver) bundle.getParcelable("in_app_message_result_receiver");
            }
            this.f1594 = bundle.getBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false);
            this.f1596 = bundle.getInt("activity_code", 100);
            if (bundle.containsKey("billingClientTransactionId")) {
                this.f1599 = bundle.getLong("billingClientTransactionId");
            }
            if (bundle.containsKey("wasServiceAutoReconnected")) {
                this.f1597 = bundle.getBoolean("wasServiceAutoReconnected");
                return;
            }
            return;
        }
        AbstractC0542.m2096("ProxyBillingActivity", "Launching Play Store billing flow");
        this.f1596 = 100;
        if (getIntent().hasExtra("BUY_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("BUY_INTENT");
            if (getIntent().hasExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT") && getIntent().getBooleanExtra("IS_FLOW_FROM_FIRST_PARTY_CLIENT", false)) {
                this.f1594 = true;
                this.f1596 = 110;
            }
        } else if (getIntent().hasExtra("IN_APP_MESSAGE_INTENT")) {
            pendingIntent = (PendingIntent) getIntent().getParcelableExtra("IN_APP_MESSAGE_INTENT");
            this.f1595 = (ResultReceiver) getIntent().getParcelableExtra("in_app_message_result_receiver");
            this.f1596 = 101;
        } else {
            pendingIntent = null;
        }
        if (getIntent().hasExtra("billingClientTransactionId")) {
            this.f1599 = getIntent().getLongExtra("billingClientTransactionId", 0L);
        }
        if (getIntent().hasExtra("wasServiceAutoReconnected")) {
            this.f1597 = getIntent().getBooleanExtra("wasServiceAutoReconnected", false);
        }
        try {
            this.f1598 = true;
            startIntentSenderForResult(pendingIntent.getIntentSender(), this.f1596, new Intent(), 0, 0, 0);
        } catch (IntentSender.SendIntentException e) {
            AbstractC0542.m2091("ProxyBillingActivity", "Got exception while trying to start a purchase flow.", e);
            ResultReceiver resultReceiver = this.f1595;
            if (resultReceiver != null) {
                resultReceiver.send(0, null);
            } else {
                Intent m1098 = m1098(137, this.f1599);
                if (this.f1594) {
                    m1098.putExtra("IS_FIRST_PARTY_PURCHASE", true);
                }
                sendBroadcast(m1098);
            }
            this.f1598 = false;
            finish();
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (isFinishing() && this.f1598) {
            Intent m1097 = m1097();
            m1097.putExtra("RESPONSE_CODE", 1);
            m1097.putExtra("DEBUG_MESSAGE", "Billing dialog closed.");
            if (this.f1594) {
                m1097.putExtra("IS_FIRST_PARTY_PURCHASE", true);
            }
            int i = this.f1596;
            if (i == 110 || i == 100) {
                m1097.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
                m1097.putExtra("billingClientTransactionId", this.f1599);
            }
            sendBroadcast(m1097);
        }
    }

    @Override // android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f1595;
        if (resultReceiver != null) {
            bundle.putParcelable("in_app_message_result_receiver", resultReceiver);
        }
        bundle.putBoolean("send_cancelled_broadcast_if_finished", this.f1598);
        bundle.putBoolean("IS_FLOW_FROM_FIRST_PARTY_CLIENT", this.f1594);
        bundle.putInt("activity_code", this.f1596);
        bundle.putLong("billingClientTransactionId", this.f1599);
        bundle.putBoolean("wasServiceAutoReconnected", this.f1597);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Intent m1097() {
        Intent intent = new Intent("com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED");
        intent.setPackage(getApplicationContext().getPackageName());
        return intent;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Intent m1098(int i, long j) {
        Intent m1097 = m1097();
        m1097.putExtra("RESPONSE_CODE", 6);
        m1097.putExtra("DEBUG_MESSAGE", "An internal error occurred.");
        C1099 m3527 = C1115.m3527();
        m3527.f4291 = 6;
        m3527.f4289 = "An internal error occurred.";
        C1115 m3485 = m3527.m3485();
        int i2 = AbstractC1104.f4313;
        m1097.putExtra("FAILURE_LOGGING_PAYLOAD", AbstractC1104.m3492(i, 2, m3485, null, EnumC0583.f2383).m2197());
        m1097.putExtra("INTENT_SOURCE", "LAUNCH_BILLING_FLOW");
        m1097.putExtra("billingClientTransactionId", j);
        m1097.putExtra("wasServiceAutoReconnected", this.f1597);
        return m1097;
    }
}
