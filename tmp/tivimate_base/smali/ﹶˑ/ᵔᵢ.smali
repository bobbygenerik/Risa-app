.class public final synthetic Lﹶˑ/ᵔᵢ;
.super Lˊʼ/ʼˎ;
.source "SourceFile"

# interfaces
.implements Lᴵⁱ/ﾞʻ;


# static fields
.field public static final ᵎⁱ:Lﹶˑ/ᵔᵢ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lﹶˑ/ᵔᵢ;

    const-string v4, "next()Lkotlin/text/MatchResult;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lﹶˑ/ᵎﹶ;

    const-string v3, "next"

    invoke-direct/range {v0 .. v5}, Lˊʼ/ʼˎ;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lﹶˑ/ᵔᵢ;->ᵎⁱ:Lﹶˑ/ᵔᵢ;

    return-void
.end method


# virtual methods
.method public final ⁱˊ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    check-cast p1, Lﹶˑ/ᵎﹶ;

    iget-object v0, p1, Lﹶˑ/ᵎﹶ;->ⁱˊ:Ljava/lang/CharSequence;

    iget-object p1, p1, Lﹶˑ/ᵎﹶ;->ﹳٴ:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->pattern()Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v3

    :cond_1
    new-instance v1, Lﹶˑ/ᵎﹶ;

    invoke-direct {v1, p1, v0}, Lﹶˑ/ᵎﹶ;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    return-object v1

    :cond_2
    return-object v3
.end method
