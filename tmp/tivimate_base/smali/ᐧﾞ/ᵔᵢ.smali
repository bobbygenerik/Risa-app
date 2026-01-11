.class public final Lᐧﾞ/ᵔᵢ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lˊᐧ/ᵔﹳ;

.field public final synthetic ˉٴ:Lᐧﾞ/ʼˎ;

.field public ˊʻ:Lˊᐧ/ʻٴ;

.field public synthetic ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:Lˊᐧ/ᵔﹳ;

.field public ᵎⁱ:I


# direct methods
.method public constructor <init>(Lᐧﾞ/ʼˎ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lᐧﾞ/ᵔᵢ;->ˉٴ:Lᐧﾞ/ʼˎ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᐧﾞ/ᵔᵢ;->ٴᵢ:Ljava/lang/Object;

    iget p1, p0, Lᐧﾞ/ᵔᵢ;->ᵎⁱ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᐧﾞ/ᵔᵢ;->ᵎⁱ:I

    iget-object p1, p0, Lᐧﾞ/ᵔᵢ;->ˉٴ:Lᐧﾞ/ʼˎ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lᐧﾞ/ʼˎ;->ⁱˊ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
