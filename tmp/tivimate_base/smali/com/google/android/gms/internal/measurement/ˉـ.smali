.class public final Lcom/google/android/gms/internal/measurement/ˉـ;
.super Lcom/google/android/gms/internal/measurement/ـﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

.field public final synthetic ٴᵢ:Ljava/lang/Object;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 7

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/measurement/ˈˏ;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->registerOnMeasurementEventListener(Lcom/google/android/gms/internal/measurement/ˊˋ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    new-instance v4, Lʿᵎ/ⁱˊ;

    invoke-direct {v4, v0}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lʿᵎ/ⁱˊ;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lʿᵎ/ⁱˊ;

    invoke-direct {v6, v0}, Lʿᵎ/ⁱˊ;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x5

    const-string v3, "Error with data collection. Data lost."

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/ᵔי;->logHealthData(ILjava/lang/String;Lʿᵎ/ﹳٴ;Lʿᵎ/ﹳٴ;Lʿᵎ/ﹳٴ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Lﹶﾞ/ﹶˎ;

    new-instance v2, Lcom/google/android/gms/internal/measurement/ᐧᴵ;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/ᐧᴵ;-><init>(Lcom/google/android/gms/internal/measurement/ˉـ;Lﹶﾞ/ﹶˎ;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/measurement/ᵔי;->retrieveAndUploadBatches(Lcom/google/android/gms/internal/measurement/ˑٴ;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʾˋ:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->setMeasurementEnabled(ZJ)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˉـ;->ٴᵢ:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-wide v2, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʾˋ:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->setConditionalUserProperty(Landroid/os/Bundle;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
