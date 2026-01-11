.class public final Lʿᵢ/ˈⁱ;
.super Lᴵʾ/ʽ;
.source "SourceFile"


# instance fields
.field public ˈٴ:Lﹶי/ʽ;

.field public synthetic ˉٴ:Ljava/lang/Object;

.field public ˊʻ:Ljava/nio/channels/FileLock;

.field public ٴʼ:I

.field public ٴᵢ:Z

.field public ᴵᵔ:Ljava/io/FileInputStream;

.field public final synthetic ᵎⁱ:Lʿᵢ/ᴵˑ;


# direct methods
.method public constructor <init>(Lʿᵢ/ᴵˑ;Lᴵʾ/ʽ;)V
    .locals 0

    iput-object p1, p0, Lʿᵢ/ˈⁱ;->ᵎⁱ:Lʿᵢ/ᴵˑ;

    invoke-direct {p0, p2}, Lᴵʾ/ʽ;-><init>(Lˈי/ˈ;)V

    return-void
.end method


# virtual methods
.method public final ᵔﹳ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lʿᵢ/ˈⁱ;->ˉٴ:Ljava/lang/Object;

    iget p1, p0, Lʿᵢ/ˈⁱ;->ٴʼ:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lʿᵢ/ˈⁱ;->ٴʼ:I

    iget-object p1, p0, Lʿᵢ/ˈⁱ;->ᵎⁱ:Lʿᵢ/ᴵˑ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lʿᵢ/ᴵˑ;->ⁱˊ(Lᴵⁱ/ʼᐧ;Lᴵʾ/ʽ;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
