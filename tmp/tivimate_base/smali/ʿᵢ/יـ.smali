.class public final Lʿᵢ/יـ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʿᵢ/ˈٴ;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʿᵢ/ˈٴ;

.field public ᴵᵔ:Lﹶי/ʽ;


# direct methods
.method public constructor <init>(Lʿᵢ/ˈٴ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/יـ;->ٴᵢ:Lʿᵢ/ˈٴ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/יـ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/יـ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/יـ;->ˉٴ:I

    iget-object p1, p0, Lʿᵢ/יـ;->ٴᵢ:Lʿᵢ/ˈٴ;

    invoke-static {p1, p0}, Lʿᵢ/ˈٴ;->ʽ(Lʿᵢ/ˈٴ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
