.class public final Lⁱˉ/ʽ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ʽ:Lⁱˉ/ʽ;

.field public static final ⁱˊ:Lʼʻ/ᵔﹳ;


# instance fields
.field public final ﹳٴ:Lʼʻ/ʿᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lʼʻ/ˉـ;->ᴵˊ:Lʼʻ/ˉـ;

    new-instance v1, Lᵔﹶ/ˉʿ;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lᵔﹶ/ˉʿ;-><init>(I)V

    new-instance v2, Lʼʻ/ᵔﹳ;

    invoke-direct {v2, v1, v0}, Lʼʻ/ᵔﹳ;-><init>(Lˆʽ/ˑﹳ;Lʼʻ/ʿ;)V

    sput-object v2, Lⁱˉ/ʽ;->ⁱˊ:Lʼʻ/ᵔﹳ;

    new-instance v0, Lⁱˉ/ʽ;

    sget-object v1, Lʼʻ/ᵎⁱ;->ᴵˊ:Lʼʻ/ٴᵢ;

    sget-object v1, Lʼʻ/ʿᵢ;->ᴵᵔ:Lʼʻ/ʿᵢ;

    invoke-direct {v0, v1}, Lⁱˉ/ʽ;-><init>(Ljava/util/List;)V

    sput-object v0, Lⁱˉ/ʽ;->ʽ:Lⁱˉ/ʽ;

    const/4 v0, 0x0

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lᐧˎ/ʼʼ;->ᵔٴ(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lⁱˉ/ʽ;->ⁱˊ:Lʼʻ/ᵔﹳ;

    invoke-static {v0, p1}, Lʼʻ/ᵎⁱ;->ˏי(Ljava/util/Comparator;Ljava/util/List;)Lʼʻ/ʿᵢ;

    move-result-object p1

    iput-object p1, p0, Lⁱˉ/ʽ;->ﹳٴ:Lʼʻ/ʿᵢ;

    return-void
.end method
