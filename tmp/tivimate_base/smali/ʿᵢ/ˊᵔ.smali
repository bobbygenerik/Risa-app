.class public final Lʿᵢ/ˊᵔ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lﹶי/ʽ;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʿᵢ/ـﹶ;

.field public ᴵᵔ:Z


# direct methods
.method public constructor <init>(Lʿᵢ/ـﹶ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ˊᵔ;->ٴᵢ:Lʿᵢ/ـﹶ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ˊᵔ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ˊᵔ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ˊᵔ;->ˉٴ:I

    iget-object p1, p0, Lʿᵢ/ˊᵔ;->ٴᵢ:Lʿᵢ/ـﹶ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵢ/ـﹶ;->ⁱˊ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
