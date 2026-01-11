.class public final Lʼˋ/ˏי;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʼˋ/ـˆ;

.field public final synthetic ˉٴ:Lʼˋ/ـˆ;

.field public ˊʻ:Z

.field public synthetic ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:Lʼˋ/ᵔᵢ;

.field public ᵎⁱ:I


# direct methods
.method public constructor <init>(Lʼˋ/ـˆ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʼˋ/ˏי;->ˉٴ:Lʼˋ/ـˆ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʼˋ/ˏי;->ٴᵢ:Ljava/lang/Object;

    iget p1, p0, Lʼˋ/ˏי;->ᵎⁱ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʼˋ/ˏי;->ᵎⁱ:I

    iget-object p1, p0, Lʼˋ/ˏי;->ˉٴ:Lʼˋ/ـˆ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʼˋ/ـˆ;->ﾞᴵ(ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
