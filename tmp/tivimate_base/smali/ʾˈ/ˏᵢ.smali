.class public final Lʾˈ/ˏᵢ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/lang/String;

.field public ˉٴ:I

.field public synthetic ˊʻ:Ljava/lang/Object;

.field public final synthetic ٴᵢ:Lʾˈ/ᴵʼ;

.field public ᴵᵔ:Lʾˈ/ᐧﾞ;


# direct methods
.method public constructor <init>(Lʾˈ/ᴵʼ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʾˈ/ˏᵢ;->ٴᵢ:Lʾˈ/ᴵʼ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʾˈ/ˏᵢ;->ˊʻ:Ljava/lang/Object;

    iget p1, p0, Lʾˈ/ˏᵢ;->ˉٴ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʾˈ/ˏᵢ;->ˉٴ:I

    iget-object p1, p0, Lʾˈ/ˏᵢ;->ٴᵢ:Lʾˈ/ᴵʼ;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lʾˈ/ᴵʼ;->ﹳٴ(Lʾˈ/ᴵʼ;Ljava/lang/String;Lʾˈ/ᐧﾞ;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
