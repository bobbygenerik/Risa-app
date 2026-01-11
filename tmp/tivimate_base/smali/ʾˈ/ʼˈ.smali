.class public final Lʾˈ/ʼˈ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lʾˈ/ـˏ;

.field public final synthetic ˊʻ:Lʾˈ/ـˏ;

.field public ٴᵢ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʾˈ/ـˏ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʾˈ/ʼˈ;->ˊʻ:Lʾˈ/ـˏ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʾˈ/ʼˈ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lʾˈ/ʼˈ;->ٴᵢ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʾˈ/ʼˈ;->ٴᵢ:I

    iget-object p1, p0, Lʾˈ/ʼˈ;->ˊʻ:Lʾˈ/ـˏ;

    invoke-static {p1, p0}, Lʾˈ/ـˏ;->ﹳٴ(Lʾˈ/ـˏ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
