.class public final Lᵎˈ/ˊʻ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lᵎˈ/ٴᵢ;

.field public ˉٴ:Ljava/lang/Object;

.field public ˊʻ:Lᵎˈ/ˉٴ;

.field public final synthetic ٴʼ:Lᵎˈ/ٴᵢ;

.field public ٴᵢ:Lᴵי/ᴵˑ;

.field public ᴵᵔ:Lᵎˈ/ᵔᵢ;

.field public ᵎˊ:I

.field public synthetic ᵎⁱ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lᵎˈ/ٴᵢ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lᵎˈ/ˊʻ;->ٴʼ:Lᵎˈ/ٴᵢ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lᵎˈ/ˊʻ;->ᵎⁱ:Ljava/lang/Object;

    iget p1, p0, Lᵎˈ/ˊʻ;->ᵎˊ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lᵎˈ/ˊʻ;->ᵎˊ:I

    iget-object p1, p0, Lᵎˈ/ˊʻ;->ٴʼ:Lᵎˈ/ٴᵢ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lᵎˈ/ٴᵢ;->ⁱˊ(Lᵎˈ/ᵔᵢ;Lˈי/ˈ;)Ljava/lang/Object;

    sget-object p1, Lᵢˎ/ﹳٴ;->ʾˋ:Lᵢˎ/ﹳٴ;

    return-object p1
.end method
