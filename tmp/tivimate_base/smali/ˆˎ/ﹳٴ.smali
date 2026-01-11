.class public final Lˆˎ/ﹳٴ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lʽⁱ/ˊʻ;


# instance fields
.field public final ⁱˊ:Ljava/lang/String;

.field public final ﹳٴ:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˆˎ/ﹳٴ;->ﹳٴ:I

    iput-object p2, p0, Lˆˎ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ait(controlCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lˆˎ/ﹳٴ;->ﹳٴ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lˆˎ/ﹳٴ;->ⁱˊ:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lʼﾞ/ˊˋ;->ʽﹳ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic ʽ()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ⁱˊ()Lʽⁱ/ﹳᐧ;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic ﹳٴ(Lʽⁱ/ˈٴ;)V
    .locals 0

    return-void
.end method
