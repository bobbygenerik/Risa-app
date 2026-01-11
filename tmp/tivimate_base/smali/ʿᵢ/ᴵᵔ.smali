.class public final Lʿᵢ/ᴵᵔ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/lang/Object;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʿᵢ/ˊʻ;

.field public ᴵᵔ:Ljava/io/FileInputStream;


# direct methods
.method public constructor <init>(Lʿᵢ/ˊʻ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ᴵᵔ;->ٴᵢ:Lʿᵢ/ˊʻ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ᴵᵔ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ᴵᵔ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ᴵᵔ;->ˉٴ:I

    iget-object p1, p0, Lʿᵢ/ᴵᵔ;->ٴᵢ:Lʿᵢ/ˊʻ;

    invoke-static {p1, p0}, Lʿᵢ/ˊʻ;->ʽ(Lʿᵢ/ˊʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
