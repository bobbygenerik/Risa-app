package com.google.android.material.datepicker;

import android.os.Bundle;
import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import ar.tvplayer.tv.R;
import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import p044.C1325;
import p044.C1337;
import p044.C1338;
import p055.C1463;
import p055.InterfaceC1488;
import p223.C3056;
import p229.AbstractComponentCallbacksC3123;
import p244.C3248;
import p301.InterfaceC3701;
import p312.C3840;
import p312.C3842;
import p312.C3854;
import p312.C3855;
import p312.C3860;
import p329.InterfaceC4106;
import p392.C4644;
import p428.C5058;
import p428.C5063;
import p430.AbstractC5106;
import ʼⁱ.ˊﹳ;
import ʼⁱ.י;
import ʿˋ.ˋᵔ;
import ᵔʻ.ˈـ;
import ᵔʻ.ﾞˏ;

/* renamed from: com.google.android.material.datepicker.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0663 implements View.OnClickListener {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f2701;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f2702;

    public /* synthetic */ ViewOnClickListenerC0663(int i, Object obj) {
        this.f2701 = i;
        this.f2702 = obj;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v32, types: [java.lang.Object, ʻᵢ.ʽ] */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.Object, ʻᵢ.ʽ] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC4106 onItemClickedListener;
        ᴵʽ.ʾᵎ r5;
        ˈـ r52;
        int i = this.f2701;
        Object obj = this.f2702;
        switch (i) {
            case 0:
                ((C0664) obj).m2401();
                throw null;
            case 1:
                ʻـ.ˑﹳ r8 = (ʻـ.ˑﹳ) obj;
                ʻـ.ﾞᴵ r1 = r8.ˈⁱ;
                int m6006 = r8.m6006();
                if (m6006 == -1 || (onItemClickedListener = r1.ˑﹳ.getOnItemClickedListener()) == null) {
                    return;
                }
                onItemClickedListener.mo3844(Integer.valueOf(((ʻـ.ˈ) r1.ˈ.get(m6006)).ﹳٴ));
                return;
            case 2:
                י r82 = (י) obj;
                InterfaceC3701[] interfaceC3701Arr = י.ﹶʽ;
                String pin = r82.ˋـ().ˉˆ.getPin();
                if (pin.length() > 0) {
                    r82.ـʻ(pin);
                    return;
                }
                return;
            case 3:
                C1325 c1325 = (C1325) obj;
                EditText editText = c1325.f5098;
                if (editText == null) {
                    return;
                }
                Editable text = editText.getText();
                if (text != null) {
                    text.clear();
                }
                c1325.m4011();
                return;
            case 4:
                ((C1338) obj).m4005();
                return;
            case 5:
                C1337 c1337 = (C1337) obj;
                EditText editText2 = c1337.f5161;
                if (editText2 == null) {
                    return;
                }
                int selectionEnd = editText2.getSelectionEnd();
                EditText editText3 = c1337.f5161;
                if (editText3 == null || !(editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                    c1337.f5161.setTransformationMethod(PasswordTransformationMethod.getInstance());
                } else {
                    c1337.f5161.setTransformationMethod(null);
                }
                if (selectionEnd >= 0) {
                    c1337.f5161.setSelection(selectionEnd);
                }
                c1337.m4011();
                return;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                ʾʼ.ˆʾ r83 = (ʾʼ.ˆʾ) obj;
                C3248 m568 = r83.ﹶˎ.m568(0);
                C3248 m5682 = r83.ﹶˎ.m568(1);
                if (m568 == null || m5682 == null) {
                    return;
                }
                com.google.android.gms.internal.play_billing.י.ᴵˊ = Integer.valueOf((m568.f12505 * 60) + (m5682.f12505 * 5));
                r83.ˊˊ();
                return;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                ʾʼ.ˉˆ r84 = (ʾʼ.ˉˆ) obj;
                LocalDateTime ofInstant = LocalDateTime.ofInstant(Instant.ofEpochMilli(r84.ﹶˎ.getDate()), ZoneId.systemDefault());
                com.google.android.gms.internal.play_billing.י.ʾˋ = Long.valueOf(LocalDateTime.ofInstant(Instant.ofEpochMilli(((ʾʼ.ᵔʾ) r84.ⁱᴵ.getValue()).ʾˋ), ZoneId.systemDefault()).withYear(ofInstant.getYear()).withMonth(ofInstant.getMonthValue()).withDayOfMonth(ofInstant.getDayOfMonth()).withSecond(0).C(ZoneId.systemDefault()).toInstant().toEpochMilli());
                r84.ˊˊ();
                return;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                ʾʼ.ᵔﹳ r85 = (ʾʼ.ᵔﹳ) obj;
                com.google.android.gms.internal.play_billing.י.ʾˋ = Long.valueOf(LocalDateTime.ofInstant(Instant.ofEpochMilli(((ʾʼ.ʼᐧ) r85.ⁱᴵ.getValue()).ʾˋ), ZoneId.systemDefault()).withHour(r85.ﹶˎ.getHour()).withMinute(r85.ﹶˎ.getMinute()).withSecond(0).C(ZoneId.systemDefault()).toInstant().toEpochMilli());
                r85.ˊˊ();
                return;
            case 9:
                ˊﹳ r12 = ((ˉˊ.ﹳٴ) obj).ʽﹳ();
                ᴵʽ.ʾᵎ r13 = r12 != null ? r12.f11928 : null;
                r5 = r13 instanceof ˉˊ.ـˆ ? (ˉˊ.ـˆ) r13 : null;
                if (r5 != null) {
                    InterfaceC3701[] interfaceC3701Arr2 = ˉˊ.ـˆ.ʽʾ;
                    r5.יˑ(ˉˊ.ˉˆ.ᴵˊ, true, true, false);
                    r5.ᐧⁱ(true);
                    return;
                }
                return;
            case 10:
                ((C3860) obj).m8053(!r8.f15032);
                return;
            case 11:
                C3860 c3860 = ((C3842) obj).f14886;
                ʽⁱ.ᵎﹶ r3 = c3860.f15025;
                if (r3 == null || !r3.ᐧﹶ(29)) {
                    return;
                }
                C1463 m9234 = ((C4644) c3860.f15025).m9234();
                InterfaceC1488 interfaceC1488 = c3860.f15025;
                C5063 c5063 = (C5063) m9234;
                c5063.getClass();
                C5058 c5058 = new C5058(c5063);
                c5058.mo4289(1);
                c5058.mo4283(1, false);
                ((C4644) interfaceC1488).m9257(c5058.mo4290());
                ((String[]) c3860.f15019.f5599)[1] = c3860.getResources().getString(R.string.51b);
                c3860.f14984.dismiss();
                return;
            case 12:
                C3855 c3855 = (C3855) obj;
                C3860 c38602 = c3855.f14908;
                int m60062 = c3855.m6006();
                View view2 = c38602.f14957;
                if (m60062 == 0) {
                    C3854 c3854 = c38602.f14971;
                    view2.getClass();
                    c38602.m8055(c3854, view2);
                    return;
                } else {
                    if (m60062 != 1) {
                        c38602.f14984.dismiss();
                        return;
                    }
                    C3842 c3842 = c38602.f14972;
                    view2.getClass();
                    c38602.m8055(c3842, view2);
                    return;
                }
            case 13:
                C3860 c38603 = ((C3842) obj).f14886;
                ʽⁱ.ᵎﹶ r32 = c38603.f15025;
                if (r32 == null || !r32.ᐧﹶ(29)) {
                    return;
                }
                C1463 m92342 = ((C4644) c38603.f15025).m9234();
                InterfaceC1488 interfaceC14882 = c38603.f15025;
                C5063 c50632 = (C5063) m92342;
                c50632.getClass();
                C5058 c50582 = new C5058(c50632);
                c50582.mo4289(3);
                c50582.mo4285();
                c50582.mo4291();
                c50582.mo4288();
                ((C4644) interfaceC14882).m9257(c50582.mo4290());
                c38603.f14984.dismiss();
                return;
            case 14:
                C3840 c3840 = (C3840) obj;
                c3840.m8007();
                if (view.getId() == R.id.2g9) {
                    c3840.f14871.start();
                    return;
                } else {
                    if (view.getId() == R.id.176) {
                        c3840.f14875.start();
                        return;
                    }
                    return;
                }
            case 15:
                ˊﹳ r14 = ((ˉˊ.ﹳٴ) obj).ʽﹳ();
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = r14 != null ? r14.f11928 : null;
                r5 = abstractComponentCallbacksC3123 instanceof ᴵʽ.ʾᵎ ? (ᴵʽ.ʾᵎ) abstractComponentCallbacksC3123 : null;
                if (r5 != null) {
                    InterfaceC3701[] interfaceC3701Arr3 = ᴵʽ.ʾᵎ.ˆˑ;
                    r5.ᐧⁱ(ᴵʽ.ﹳᐧ.ᴵˊ, true, true, false);
                    r5.ˋ(true);
                    return;
                }
                return;
            default:
                ˈـ r86 = (ˈـ) obj;
                InterfaceC3701[] interfaceC3701Arr4 = ˈـ.ˎˏ;
                ﾞˏ r15 = r86.f11928;
                ﾞˏ r16 = r15 instanceof ﾞˏ ? r15 : null;
                if (r16 != null && r16.ᐧⁱ()) {
                    if (ˋᵔ.ʽ || (r52 = r16.ᐧˏ(r16.ᵢˋ)) == null) {
                        return;
                    }
                    r16.ˊـ().ﾞʻ.setHeader("");
                    r16.ˊـ().ﾞʻ.setItems(AbstractC5106.m10045(new ʻـ.ˈ(1, r16.m6800(R.string.6vh), r16.ᵢﹳ(1)), new ʻـ.ˈ(2, r16.m6800(R.string.3nc), r16.ᵢﹳ(2)), new ʻـ.ˈ(3, r16.m6800(R.string.db), r16.ᵢﹳ(3)), new ʻـ.ˈ(4, r52.ⁱᵎ() ? r16.m6800(R.string.1vs) : r16.m6800(R.string.1qj), r16.ᵢﹳ(4)), new ʻـ.ˈ(5, r52.f11904 == r16.ˋـ ? r16.m6800(R.string.3pm) : r16.m6800(R.string.4q7), r16.ᵢﹳ(5)), new ʻـ.ˈ(6, r16.m6800(R.string.3jd), r16.ᵢﹳ(6)), new ʻـ.ˈ(7, r16.m6800(R.string.4oq), r16.ᵢﹳ(7))));
                    r16.ˊـ().ﾞʻ.setOnItemClickedListener(new ᐧᵎ.ˆʾ(14, r16));
                    r16.ﾞי(true);
                    return;
                }
                if (r86.ˎـ) {
                    r86.ʿי(false);
                    return;
                } else if (r86.ʼﾞ().ˉʿ.getVisibility() != 0) {
                    ˈـ.ᵢـ(r86, ﾞ.ᵎﹶ.ᴵˊ.ᐧˉ(), (KeyEvent) null, 14);
                    return;
                } else {
                    r86.ˎˊ(true);
                    ˉᵎ.ⁱˊ.ᵔי(r86.m6788(), true, 2, false, (Bundle) null, 24);
                    return;
                }
        }
    }
}
