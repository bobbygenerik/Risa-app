.class public final Lˊـ/ⁱˊ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ˈ:Ljava/util/regex/Pattern;

.field public static final ˑﹳ:Lʼʻ/ᵔٴ;

.field public static final ᵎﹶ:Lʼʻ/ᵔٴ;

.field public static final ᵔᵢ:Lʼʻ/ᵔٴ;

.field public static final ﾞᴵ:Lʼʻ/ᵔٴ;


# instance fields
.field public final ʽ:I

.field public final ⁱˊ:I

.field public final ﹳٴ:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lˊـ/ⁱˊ;->ˈ:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "auto"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "none"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lʼʻ/ᵔٴ;->ˆʾ(I[Ljava/lang/Object;)Lʼʻ/ᵔٴ;

    move-result-object v1

    sput-object v1, Lˊـ/ⁱˊ;->ˑﹳ:Lʼʻ/ᵔٴ;

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "dot"

    aput-object v5, v4, v2

    const-string v5, "sesame"

    aput-object v5, v4, v3

    const-string v5, "circle"

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Lʼʻ/ᵔٴ;->ˆʾ(I[Ljava/lang/Object;)Lʼʻ/ᵔٴ;

    move-result-object v4

    sput-object v4, Lˊـ/ⁱˊ;->ﾞᴵ:Lʼʻ/ᵔٴ;

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "filled"

    aput-object v5, v4, v2

    const-string v5, "open"

    aput-object v5, v4, v3

    invoke-static {v0, v4}, Lʼʻ/ᵔٴ;->ˆʾ(I[Ljava/lang/Object;)Lʼʻ/ᵔٴ;

    move-result-object v4

    sput-object v4, Lˊـ/ⁱˊ;->ᵎﹶ:Lʼʻ/ᵔٴ;

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "after"

    aput-object v5, v4, v2

    const-string v2, "before"

    aput-object v2, v4, v3

    const-string v2, "outside"

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Lʼʻ/ᵔٴ;->ˆʾ(I[Ljava/lang/Object;)Lʼʻ/ᵔٴ;

    move-result-object v0

    sput-object v0, Lˊـ/ⁱˊ;->ᵔᵢ:Lʼʻ/ᵔٴ;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lˊـ/ⁱˊ;->ﹳٴ:I

    iput p2, p0, Lˊـ/ⁱˊ;->ⁱˊ:I

    iput p3, p0, Lˊـ/ⁱˊ;->ʽ:I

    return-void
.end method
