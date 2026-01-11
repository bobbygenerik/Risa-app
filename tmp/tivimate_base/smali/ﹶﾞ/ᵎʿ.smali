.class public final Lﹶﾞ/ᵎʿ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:J

.field public final ˈ:Lcom/google/android/gms/internal/measurement/ﹳـ;

.field public final ˑﹳ:Z

.field public final ᵎﹶ:Ljava/lang/String;

.field public final ⁱˊ:Ljava/lang/Boolean;

.field public final ﹳٴ:Landroid/content/Context;

.field public final ﾞᴵ:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/ﹳـ;Ljava/lang/Long;)V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lﹶﾞ/ᵎʿ;->ˑﹳ:Z

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lٴﾞ/ʻٴ;->ﾞᴵ(Ljava/lang/Object;)V

    iput-object p1, p0, Lﹶﾞ/ᵎʿ;->ﹳٴ:Landroid/content/Context;

    iput-object p3, p0, Lﹶﾞ/ᵎʿ;->ﾞᴵ:Ljava/lang/Long;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lﹶﾞ/ᵎʿ;->ˈ:Lcom/google/android/gms/internal/measurement/ﹳـ;

    iget-boolean p1, p2, Lcom/google/android/gms/internal/measurement/ﹳـ;->ʽʽ:Z

    iput-boolean p1, p0, Lﹶﾞ/ᵎʿ;->ˑﹳ:Z

    iget-wide v1, p2, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵˊ:J

    iput-wide v1, p0, Lﹶﾞ/ᵎʿ;->ʽ:J

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/ﹳـ;->ᴵᵔ:Ljava/lang/String;

    iput-object p1, p0, Lﹶﾞ/ᵎʿ;->ᵎﹶ:Ljava/lang/String;

    iget-object p1, p2, Lcom/google/android/gms/internal/measurement/ﹳـ;->ˈٴ:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string p2, "dataCollectionDefaultEnabled"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lﹶﾞ/ᵎʿ;->ⁱˊ:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
