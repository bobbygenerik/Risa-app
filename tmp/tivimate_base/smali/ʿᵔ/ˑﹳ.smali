.class public final Lʿᵔ/ˑﹳ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public synthetic ˈٴ:Ljava/lang/Object;

.field public ˊʻ:I

.field public final synthetic ᴵᵔ:Lʿᵔ/ﾞᴵ;


# direct methods
.method public constructor <init>(Lʿᵔ/ﾞᴵ;Lˈי/ˈ;)V
    .locals 0

    iput-object p1, p0, Lʿᵔ/ˑﹳ;->ᴵᵔ:Lʿᵔ/ﾞᴵ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵔ/ˑﹳ;->ˈٴ:Ljava/lang/Object;

    iget p1, p0, Lʿᵔ/ˑﹳ;->ˊʻ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵔ/ˑﹳ;->ˊʻ:I

    iget-object p1, p0, Lʿᵔ/ˑﹳ;->ᴵᵔ:Lʿᵔ/ﾞᴵ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵔ/ﾞᴵ;->ﹳٴ(Ljava/lang/Object;Lˈי/ˈ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
