package p179;

import android.app.Service;
import android.content.Intent;
import java.util.List;
import p447.C5322;
import p447.C5344;
import p447.InterfaceC5212;
import ᐧﹳ.ʽ;

/* renamed from: ˋˋ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC2708 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f10299;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f10300;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ int f10301;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f10302;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f10303;

    public /* synthetic */ RunnableC2708(Object obj, List list, List list2, int i, int i2) {
        this.f10300 = i2;
        this.f10303 = obj;
        this.f10302 = list;
        this.f10299 = list2;
        this.f10301 = i;
    }

    public /* synthetic */ RunnableC2708(ʽ r2, int i, C5344 c5344, Intent intent) {
        this.f10300 = 2;
        this.f10302 = r2;
        this.f10301 = i;
        this.f10299 = c5344;
        this.f10303 = intent;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10300) {
            case 0:
                ((C2733) this.f10303).f10432.execute(new RunnableC2689(this, 0, AbstractC2741.m6138(new C2675(this, 0))));
                return;
            case 1:
                ((C2672) this.f10303).f10166.execute(new RunnableC2689(this, 1, AbstractC2741.m6138(new C2675(this, 1))));
                return;
            default:
                ʽ r0 = (ʽ) this.f10302;
                C5344 c5344 = (C5344) this.f10299;
                Intent intent = (Intent) this.f10303;
                Service service = (Service) r0.ᴵˊ;
                InterfaceC5212 interfaceC5212 = (InterfaceC5212) service;
                int i = this.f10301;
                if (interfaceC5212.mo2315(i)) {
                    c5344.f20350.m10216(Integer.valueOf(i), "Local AppMeasurementService processed last upload request. StartId");
                    C5344 c53442 = C5322.m10557(service, null, null).f20193;
                    C5322.m10556(c53442);
                    c53442.f20350.m10217("Completed wakeful intent.");
                    interfaceC5212.mo2314(intent);
                    return;
                }
                return;
        }
    }
}
