.class public final Lʿᵢ/ᴵˊ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lˊʼ/ﹳᐧ;

.field public final synthetic ˊʻ:Lʿᵢ/ˈٴ;

.field public ٴᵢ:I

.field public synthetic ᴵᵔ:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lʿᵢ/ˈٴ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ᴵˊ;->ˊʻ:Lʿᵢ/ˈٴ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lʿᵢ/ᴵˊ;->ᴵᵔ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ᴵˊ;->ٴᵢ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ᴵˊ;->ٴᵢ:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lʿᵢ/ᴵˊ;->ˊʻ:Lʿᵢ/ˈٴ;

    invoke-virtual {v1, p1, v0, p0}, Lʿᵢ/ˈٴ;->ٴﹶ(Ljava/lang/Object;ZLᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
