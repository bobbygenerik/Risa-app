.class public final Lʿᵢ/ˆﾞ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/io/FileOutputStream;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʿᵢ/ᵔٴ;

.field public ᴵᵔ:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lʿᵢ/ᵔٴ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ˆﾞ;->ٴᵢ:Lʿᵢ/ᵔٴ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ˆﾞ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ˆﾞ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ˆﾞ;->ˉٴ:I

    iget-object p1, p0, Lʿᵢ/ˆﾞ;->ٴᵢ:Lʿᵢ/ᵔٴ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵢ/ᵔٴ;->ⁱˊ(Ljava/lang/Object;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
