.class public final Lʿᵢ/ﹳـ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Ljava/lang/Object;

.field public final synthetic ˉٴ:Lʿᵢ/ᴵˑ;

.field public ˊʻ:Ljava/lang/Object;

.field public synthetic ٴᵢ:Ljava/lang/Object;

.field public ᴵᵔ:Ljava/lang/Object;

.field public ᵎⁱ:I


# direct methods
.method public constructor <init>(Lʿᵢ/ᴵˑ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ﹳـ;->ˉٴ:Lʿᵢ/ᴵˑ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ﹳـ;->ٴᵢ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ﹳـ;->ᵎⁱ:I

    iget-object p1, p0, Lʿᵢ/ﹳـ;->ˉٴ:Lʿᵢ/ᴵˑ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵢ/ᴵˑ;->ﹳٴ(Lᴵⁱ/ﾞʻ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
