.class public final Lcom/google/android/gms/internal/measurement/ʿ;
.super Lcom/google/android/gms/internal/measurement/ـﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉٴ:Landroid/os/Bundle;

.field public final synthetic ˊʻ:Ljava/lang/String;

.field public final synthetic ٴᵢ:Ljava/lang/String;

.field public final synthetic ᴵᵔ:I

.field public final synthetic ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    .prologue
    iput p5, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ᴵᵔ:I

    packed-switch p5, :pswitch_data_0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˊʻ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ٴᵢ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˉٴ:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void

    :pswitch_0
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˊʻ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ٴᵢ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˉٴ:Landroid/os/Bundle;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ﹳٴ()V
    .locals 9

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-wide v7, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʾˋ:J

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˊʻ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ٴᵢ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˉٴ:Landroid/os/Bundle;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/measurement/ᵔי;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˊʻ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ٴᵢ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ʿ;->ˉٴ:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
