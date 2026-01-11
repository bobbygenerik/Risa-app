.class public final Lcom/google/android/gms/internal/measurement/ʻᵎ;
.super Lcom/google/android/gms/internal/measurement/ـﹶ;
.source "SourceFile"


# instance fields
.field public final synthetic ˉٴ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

.field public final synthetic ˊʻ:Ljava/lang/String;

.field public final synthetic ٴᵢ:Z

.field public final synthetic ᴵᵔ:Ljava/lang/String;

.field public final synthetic ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/ᵎⁱ;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ᴵᵔ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ˊʻ:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ٴᵢ:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ـﹶ;-><init>(Lcom/google/android/gms/internal/measurement/ʻˋ;Z)V

    return-void
.end method


# virtual methods
.method public final ⁱˊ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/ᵎⁱ;->ᵔﹳ(Landroid/os/Bundle;)V

    return-void
.end method

.method public final ﹳٴ()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ᵎⁱ:Lcom/google/android/gms/internal/measurement/ʻˋ;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ʻˋ;->ﾞᴵ:Lcom/google/android/gms/internal/measurement/ᵔי;

    invoke-static {v0}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ᴵᵔ:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ˊʻ:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ٴᵢ:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/ʻᵎ;->ˉٴ:Lcom/google/android/gms/internal/measurement/ᵎⁱ;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/ᵔי;->getUserProperties(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/measurement/ᵔٴ;)V

    return-void
.end method
