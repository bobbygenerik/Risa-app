.class public final Lcom/google/android/gms/internal/measurement/ʿᵢ;
.super Lcom/google/android/gms/internal/measurement/ـﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

.field public final synthetic ˊʻ:Ljava/lang/String;

.field public final synthetic ٴᵢ:Ljava/lang/String;

.field public final synthetic ᴵᵔ:I

.field public final synthetic ᵎⁱ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Lcom/google/android/gms/internal/measurement/ᴵˑ;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᵎⁱ:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˊʻ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ٴᵢ:Ljava/lang/String;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵎⁱ;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᴵᵔ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˊʻ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ٴᵢ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᵎⁱ:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method


# virtual methods
.method public ⁱˊ()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᵎⁱ:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final ﹳٴ()V
    .locals 7

    .prologue
    iget v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᴵᵔ:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᵎⁱ:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/internal/measurement/ᴵˑ;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˊʻ:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ٴᵢ:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/measurement/ـﹶ;->ʾˋ:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/ᵔי;->setCurrentScreenByScionActivityInfo(Lcom/google/android/gms/internal/measurement/ᴵˑ;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ˊʻ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ٴᵢ:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/ʿᵢ;->ᵎⁱ:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/ᵔי;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
