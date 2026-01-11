.class public final Lʿᵢ/ˏי;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/lang/Object;

.field public final synthetic ˉٴ:Lʿᵢ/ˈٴ;

.field public ˊʻ:Lᴵי/ᵔﹳ;

.field public synthetic ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:Lʿᵢ/ˈٴ;

.field public ᵎⁱ:I


# direct methods
.method public constructor <init>(Lʿᵢ/ˈٴ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ˏי;->ˉٴ:Lʿᵢ/ˈٴ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ˏי;->ٴᵢ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ˏי;->ᵎⁱ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ˏי;->ᵎⁱ:I

    iget-object p1, p0, Lʿᵢ/ˏי;->ˉٴ:Lʿᵢ/ˈٴ;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lʿᵢ/ˈٴ;->ˈ(Lʿᵢ/ˈٴ;Lʿᵢ/ˋᵔ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
