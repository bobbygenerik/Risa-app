.class public final Lﹶˑ/ᵎﹶ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final ʽ:Lﹶˑ/ﾞᴵ;

.field public ˈ:Lﹶˑ/ˑﹳ;

.field public final ⁱˊ:Ljava/lang/CharSequence;

.field public final ﹳٴ:Ljava/util/regex/Matcher;


# direct methods
.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lﹶˑ/ᵎﹶ;->ﹳٴ:Ljava/util/regex/Matcher;

    iput-object p2, p0, Lﹶˑ/ᵎﹶ;->ⁱˊ:Ljava/lang/CharSequence;

    new-instance p1, Lﹶˑ/ﾞᴵ;

    invoke-direct {p1, p0}, Lﹶˑ/ﾞᴵ;-><init>(Lﹶˑ/ᵎﹶ;)V

    iput-object p1, p0, Lﹶˑ/ᵎﹶ;->ʽ:Lﹶˑ/ﾞᴵ;

    return-void
.end method


# virtual methods
.method public final ﹳٴ()Ljava/util/List;
    .locals 1

    .prologue
    iget-object v0, p0, Lﹶˑ/ᵎﹶ;->ˈ:Lﹶˑ/ˑﹳ;

    if-nez v0, :cond_0

    new-instance v0, Lﹶˑ/ˑﹳ;

    invoke-direct {v0, p0}, Lﹶˑ/ˑﹳ;-><init>(Lﹶˑ/ᵎﹶ;)V

    iput-object v0, p0, Lﹶˑ/ᵎﹶ;->ˈ:Lﹶˑ/ˑﹳ;

    :cond_0
    iget-object v0, p0, Lﹶˑ/ᵎﹶ;->ˈ:Lﹶˑ/ˑﹳ;

    return-object v0
.end method
