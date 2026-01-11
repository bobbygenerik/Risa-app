.class public final Lcom/google/android/gms/internal/measurement/ـʾ;
.super Lcom/google/android/gms/internal/measurement/ᵔᵢ;
.source "SourceFile"


# instance fields
.field public final synthetic ʽʽ:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/measurement/ـʾ;->ʽʽ:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/measurement/ᵔᵢ;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final ʽ(Lˏˆ/ﹳٴ;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/ᵔʾ;
    .locals 2

    .prologue
    iget p1, p0, Lcom/google/android/gms/internal/measurement/ـʾ;->ʽʽ:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1

    :pswitch_0
    new-instance p1, Lcom/google/android/gms/internal/measurement/ᵎﹶ;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/measurement/ᵎﹶ;-><init>(Ljava/lang/Double;)V

    return-object p1

    :pswitch_1
    return-object p0

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/measurement/ᵔʾ;->ﹳٴ:Lcom/google/android/gms/internal/measurement/ﹳᐧ;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
