.class public final Lʼᵎ/ⁱˊ;
.super Lʼᵎ/ʽ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    packed-switch p2, :pswitch_data_0

    invoke-static {p1}, Landroid/adservices/measurement/MeasurementManager;->get(Landroid/content/Context;)Landroid/adservices/measurement/MeasurementManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lʼᵎ/ʽ;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    return-void

    :pswitch_0
    const-class p2, Landroid/adservices/measurement/MeasurementManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/adservices/measurement/MeasurementManager;

    invoke-direct {p0, p1}, Lʼᵎ/ʽ;-><init>(Landroid/adservices/measurement/MeasurementManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
