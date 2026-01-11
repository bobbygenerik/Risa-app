.class public final Lcom/google/android/gms/internal/measurement/ˏᵢ;
.super Lcom/google/android/gms/internal/measurement/ـﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

.field public final synthetic ٴᵢ:Lcom/google/android/gms/internal/measurement/ʻˋ;

.field public final synthetic ᴵᵔ:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Lcom/google/android/gms/internal/measurement/ᵎⁱ;I)V
    .locals 0

    iput p3, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->getCurrentScreenClass(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->getCurrentScreenName(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->generateEventId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->getCachedAppInstanceId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ٴᵢ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ˏᵢ;->ˊʻ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵔי;->getGmpAppId(Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
