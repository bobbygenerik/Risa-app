.class public final Lﹶﾞ/ˑʼ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ʽʽ:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field public final synthetic ʾˋ:I

.field public final synthetic ᴵˊ:Lcom/google/android/gms/internal/measurement/ᵔٴ;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/ᵔٴ;I)V
    .locals 0

    iput p3, p0, Lﹶﾞ/ˑʼ;->ʾˋ:I

    iput-object p2, p0, Lﹶﾞ/ˑʼ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ᵔٴ;

    iput-object p1, p0, Lﹶﾞ/ˑʼ;->ʽʽ:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    iget v0, p0, Lﹶﾞ/ˑʼ;->ʾˋ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lﹶﾞ/ˑʼ;->ʽʽ:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->ˈ:Lﹶﾞ/ᵎʻ;

    iget-object v1, v1, Lﹶﾞ/ᵎʻ;->ᵎⁱ:Lﹶﾞ/ᵢﹳ;

    invoke-static {v1}, Lﹶﾞ/ᵎʻ;->ﾞᴵ(Lʽⁱ/ᵎﹶ;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->ˈ:Lﹶﾞ/ᵎʻ;

    iget-object v2, v0, Lﹶﾞ/ᵎʻ;->ʿ:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lﹶﾞ/ᵎʻ;->ʿ:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lﹶﾞ/ˑʼ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ᵔٴ;

    invoke-virtual {v1, v2, v0}, Lﹶﾞ/ᵢﹳ;->ˏʻ(Lcom/google/android/gms/internal/measurement/ᵔٴ;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lﹶﾞ/ˑʼ;->ʽʽ:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->ˈ:Lﹶﾞ/ᵎʻ;

    invoke-virtual {v0}, Lﹶﾞ/ᵎʻ;->ﾞʻ()Lﹶﾞ/ʿʽ;

    move-result-object v2

    iget-object v4, p0, Lﹶﾞ/ˑʼ;->ᴵˊ:Lcom/google/android/gms/internal/measurement/ᵔٴ;

    invoke-virtual {v2}, Lﹶﾞ/ʾᵎ;->ⁱᴵ()V

    invoke-virtual {v2}, Lﹶﾞ/ٴᵢ;->ﹶˎ()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lﹶﾞ/ʿʽ;->ٴʿ(Z)Lﹶﾞ/ʻᐧ;

    move-result-object v3

    new-instance v1, Lʼٴ/ـˆ;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lʼٴ/ـˆ;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v2, v1}, Lﹶﾞ/ʿʽ;->ﹶʽ(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
