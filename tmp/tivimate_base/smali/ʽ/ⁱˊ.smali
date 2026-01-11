.class public final Lʽ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:F

.field public final ˈ:I

.field public final ⁱˊ:F

.field public final ﹳٴ:F


# direct methods
.method public constructor <init>(Landroid/window/BackEvent;)V
    .locals 4

    sget-object v0, Lʽ/ﹳٴ;->ﹳٴ:Lʽ/ﹳٴ;

    invoke-virtual {v0, p1}, Lʽ/ﹳٴ;->ˈ(Landroid/window/BackEvent;)F

    move-result v1

    invoke-virtual {v0, p1}, Lʽ/ﹳٴ;->ˑﹳ(Landroid/window/BackEvent;)F

    move-result v2

    invoke-virtual {v0, p1}, Lʽ/ﹳٴ;->ⁱˊ(Landroid/window/BackEvent;)F

    move-result v3

    invoke-virtual {v0, p1}, Lʽ/ﹳٴ;->ʽ(Landroid/window/BackEvent;)I

    move-result p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lʽ/ⁱˊ;->ﹳٴ:F

    iput v2, p0, Lʽ/ⁱˊ;->ⁱˊ:F

    iput v3, p0, Lʽ/ⁱˊ;->ʽ:F

    iput p1, p0, Lʽ/ⁱˊ;->ˈ:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BackEventCompat{touchX="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lʽ/ⁱˊ;->ﹳٴ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", touchY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽ/ⁱˊ;->ⁱˊ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽ/ⁱˊ;->ʽ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", swipeEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lʽ/ⁱˊ;->ˈ:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->יـ(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
