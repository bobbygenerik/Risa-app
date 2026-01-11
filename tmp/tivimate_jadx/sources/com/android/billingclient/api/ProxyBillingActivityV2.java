package com.android.billingclient.api;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.android.billingclient.api.ProxyBillingActivityV2;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import p036.AbstractActivityC1262;
import p229.C3076;
import p242.C3236;
import p242.C3238;
import p242.C3240;
import p242.InterfaceC3239;
import ﹳי.ʽ;

@UsedByReflection("PlatformActivityProxy")
/* loaded from: classes.dex */
public class ProxyBillingActivityV2 extends AbstractActivityC1262 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C3236 f1600;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public ResultReceiver f1601;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public ResultReceiver f1602;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C3236 f1603;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public ResultReceiver f1604;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C3236 f1605;

    @Override // p036.AbstractActivityC1262, p151.AbstractActivityC2438, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i = 0;
        this.f1600 = (C3236) m3851(new C3076(4), new InterfaceC3239(this) { // from class: ʼٴ.ᴵᵔ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ ProxyBillingActivityV2 f4315;

            {
                this.f4315 = this;
            }

            @Override // p242.InterfaceC3239
            /* renamed from: ᵔᵢ, reason: contains not printable characters */
            public final void mo3494(Object obj) {
                C3240 c3240 = (C3240) obj;
                switch (i) {
                    case 0:
                        ProxyBillingActivityV2 proxyBillingActivityV2 = this.f4315;
                        proxyBillingActivityV2.getClass();
                        Intent intent = c3240.f12368;
                        int i2 = AbstractC0542.m2095(intent, "ProxyBillingActivityV2").f4368;
                        ResultReceiver resultReceiver = proxyBillingActivityV2.f1601;
                        if (resultReceiver != null) {
                            resultReceiver.send(i2, intent == null ? null : intent.getExtras());
                        }
                        int i3 = c3240.f12367;
                        if (i3 != -1 || i2 != 0) {
                            AbstractC0542.m2097("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + i3 + " and billing's responseCode: " + i2);
                        }
                        proxyBillingActivityV2.finish();
                        return;
                    default:
                        ProxyBillingActivityV2 proxyBillingActivityV22 = this.f4315;
                        proxyBillingActivityV22.getClass();
                        Intent intent2 = c3240.f12368;
                        int i4 = c3240.f12367;
                        Bundle extras = intent2 == null ? null : intent2.getExtras();
                        if (i4 != -1) {
                            if (extras == null) {
                                extras = new Bundle();
                            }
                            AbstractC0542.m2097("ProxyBillingActivityV2", "External offer flow finished with resultCode: " + i4);
                            extras.putInt("INTERNAL_LOG_ERROR_REASON", 134);
                            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", "External offer flow finished with error resultCode: " + i4);
                        }
                        int i5 = AbstractC0542.m2095(intent2, "ProxyBillingActivityV2").f4368;
                        ResultReceiver resultReceiver2 = proxyBillingActivityV22.f1602;
                        if (resultReceiver2 != null) {
                            resultReceiver2.send(i5, extras);
                        } else {
                            AbstractC0542.m2097("ProxyBillingActivityV2", "External offer flow result receiver is null");
                        }
                        if (i5 != 0) {
                            AbstractC0542.m2097("ProxyBillingActivityV2", "External offer flow finished with billing responseCode: " + i5);
                        }
                        proxyBillingActivityV22.finish();
                        return;
                }
            }
        });
        this.f1603 = (C3236) m3851(new C3076(4), new ʽ(this));
        final int i2 = 1;
        this.f1605 = (C3236) m3851(new C3076(4), new InterfaceC3239(this) { // from class: ʼٴ.ᴵᵔ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ ProxyBillingActivityV2 f4315;

            {
                this.f4315 = this;
            }

            @Override // p242.InterfaceC3239
            /* renamed from: ᵔᵢ, reason: contains not printable characters */
            public final void mo3494(Object obj) {
                C3240 c3240 = (C3240) obj;
                switch (i2) {
                    case 0:
                        ProxyBillingActivityV2 proxyBillingActivityV2 = this.f4315;
                        proxyBillingActivityV2.getClass();
                        Intent intent = c3240.f12368;
                        int i22 = AbstractC0542.m2095(intent, "ProxyBillingActivityV2").f4368;
                        ResultReceiver resultReceiver = proxyBillingActivityV2.f1601;
                        if (resultReceiver != null) {
                            resultReceiver.send(i22, intent == null ? null : intent.getExtras());
                        }
                        int i3 = c3240.f12367;
                        if (i3 != -1 || i22 != 0) {
                            AbstractC0542.m2097("ProxyBillingActivityV2", "Alternative billing only dialog finished with resultCode " + i3 + " and billing's responseCode: " + i22);
                        }
                        proxyBillingActivityV2.finish();
                        return;
                    default:
                        ProxyBillingActivityV2 proxyBillingActivityV22 = this.f4315;
                        proxyBillingActivityV22.getClass();
                        Intent intent2 = c3240.f12368;
                        int i4 = c3240.f12367;
                        Bundle extras = intent2 == null ? null : intent2.getExtras();
                        if (i4 != -1) {
                            if (extras == null) {
                                extras = new Bundle();
                            }
                            AbstractC0542.m2097("ProxyBillingActivityV2", "External offer flow finished with resultCode: " + i4);
                            extras.putInt("INTERNAL_LOG_ERROR_REASON", 134);
                            extras.putString("INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS", "External offer flow finished with error resultCode: " + i4);
                        }
                        int i5 = AbstractC0542.m2095(intent2, "ProxyBillingActivityV2").f4368;
                        ResultReceiver resultReceiver2 = proxyBillingActivityV22.f1602;
                        if (resultReceiver2 != null) {
                            resultReceiver2.send(i5, extras);
                        } else {
                            AbstractC0542.m2097("ProxyBillingActivityV2", "External offer flow result receiver is null");
                        }
                        if (i5 != 0) {
                            AbstractC0542.m2097("ProxyBillingActivityV2", "External offer flow finished with billing responseCode: " + i5);
                        }
                        proxyBillingActivityV22.finish();
                        return;
                }
            }
        });
        if (bundle != null) {
            if (bundle.containsKey("alternative_billing_only_dialog_result_receiver")) {
                this.f1601 = (ResultReceiver) bundle.getParcelable("alternative_billing_only_dialog_result_receiver");
            }
            if (bundle.containsKey("external_payment_dialog_result_receiver")) {
                this.f1604 = (ResultReceiver) bundle.getParcelable("external_payment_dialog_result_receiver");
            }
            if (bundle.containsKey("external_offer_flow_result_receiver")) {
                this.f1602 = (ResultReceiver) bundle.getParcelable("external_offer_flow_result_receiver");
                return;
            }
            return;
        }
        AbstractC0542.m2096("ProxyBillingActivityV2", "Launching Play Store billing dialog");
        if (getIntent().hasExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT")) {
            PendingIntent pendingIntent = (PendingIntent) getIntent().getParcelableExtra("ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT");
            this.f1601 = (ResultReceiver) getIntent().getParcelableExtra("alternative_billing_only_dialog_result_receiver");
            this.f1600.mo6753(new C3238(pendingIntent.getIntentSender(), null, 0, 0));
        } else if (getIntent().hasExtra("external_payment_dialog_pending_intent")) {
            PendingIntent pendingIntent2 = (PendingIntent) getIntent().getParcelableExtra("external_payment_dialog_pending_intent");
            this.f1604 = (ResultReceiver) getIntent().getParcelableExtra("external_payment_dialog_result_receiver");
            this.f1603.mo6753(new C3238(pendingIntent2.getIntentSender(), null, 0, 0));
        } else if (getIntent().hasExtra("external_offer_flow_pending_intent")) {
            PendingIntent pendingIntent3 = (PendingIntent) getIntent().getParcelableExtra("external_offer_flow_pending_intent");
            this.f1602 = (ResultReceiver) getIntent().getParcelableExtra("external_offer_flow_result_receiver");
            this.f1605.mo6753(new C3238(pendingIntent3.getIntentSender(), null, 0, 0));
        }
    }

    @Override // p036.AbstractActivityC1262, p151.AbstractActivityC2438, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ResultReceiver resultReceiver = this.f1601;
        if (resultReceiver != null) {
            bundle.putParcelable("alternative_billing_only_dialog_result_receiver", resultReceiver);
        }
        ResultReceiver resultReceiver2 = this.f1604;
        if (resultReceiver2 != null) {
            bundle.putParcelable("external_payment_dialog_result_receiver", resultReceiver2);
        }
        ResultReceiver resultReceiver3 = this.f1602;
        if (resultReceiver3 != null) {
            bundle.putParcelable("external_offer_flow_result_receiver", resultReceiver3);
        }
    }
}
